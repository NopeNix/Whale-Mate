# Auto-Backup Script
# Checks every minute if stacks have changed and creates backups automatically

# Force unbuffered output
$OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

Write-Host "[Auto-Backup] Script started"

$versionsDir = "/data/versions"
$hashDbFile = "/data/db/stack-hashes.json"

# Load existing hashes as hashtable
function Get-StackHashes {
    $result = @{}
    if (Test-Path $hashDbFile) {
        try {
            $content = Get-Content -Path $hashDbFile -Raw -ErrorAction SilentlyContinue
            if ($content) {
                $data = ($content | ConvertFrom-Json)
                # Convert PSCustomObject to hashtable for proper comparison
                $data.PSObject.Properties | ForEach-Object {
                    $result[$_.Name] = @{
                        name      = $_.Value.name
                        hash      = [string]$_.Value.hash
                        type      = $_.Value.type
                        updatedAt = if ($_.Value.updatedAt) { [string]$_.Value.updatedAt } else { $null }
                    }
                }
            }
        }
        catch {
            Write-Host "[Auto-Backup] Warning: Could not load hash database: $_"
        }
    }
    return $result
}

# Save hashes
function Save-StackHashes {
    param([hashtable]$Hashes)
    
    # Ensure all values are strings for proper JSON serialization
    $cleanHashes = @{}
    foreach ($key in $Hashes.Keys) {
        $cleanHashes[$key] = @{
            name      = [string]$Hashes[$key].name
            hash      = [string]$Hashes[$key].hash
            type      = [string]$Hashes[$key].type
            updatedAt = if ($Hashes[$key].updatedAt) { [string]$Hashes[$key].updatedAt } else { $null }
        }
    }
    
    $json = $cleanHashes | ConvertTo-Json -Depth 10
    $json | Out-File -FilePath $hashDbFile -Encoding UTF8 -Force
}

# Calculate hash of content
function Get-ContentHash {
    param([string]$Content)
    
    $bytes = [System.Text.Encoding]::UTF8.GetBytes($Content)
    $sha256 = [System.Security.Cryptography.SHA256]::Create()
    $hashBytes = $sha256.ComputeHash($bytes)
    return [Convert]::ToBase64String($hashBytes)
}

# Get stack hashes from Portainer
function Get-PortainerStackHashes {
    if (-not $env:PortainerBaseAddress.TrimEnd("/") -or -not $env:PortainerAPIToken) {
        Write-Host "[Auto-Backup] Skipping - no Portainer credentials"
        return @{}
    }

    $Hashes = @{}
    
    try {
        Write-Host "[Auto-Backup] Fetching stacks from Portainer..."
        $Headers = @{
            "X-API-KEY" = $env:PortainerAPIToken
        }
        
        $stacks = Invoke-RestMethod -SkipCertificateCheck `
            -Uri ($env:PortainerBaseAddress.TrimEnd("/") + "/api/stacks") `
            -Headers $Headers `
            -Method Get `
            -ErrorAction SilentlyContinue
        
        foreach ($stack in $stacks) {
            try {
                # Get the stack file content - add cache bypass
                $stackFile = Invoke-RestMethod -SkipCertificateCheck `
                    -Uri ($env:PortainerBaseAddress.TrimEnd("/") + "/api/stacks/" + $stack.Id + "/file?t=" + [DateTimeOffset]::Now.ToUnixTimeMilliseconds()) `
                    -Headers $Headers `
                    -Method Get `
                    -ErrorAction SilentlyContinue
                
                if ($stackFile.StackFileContent) {
                    $hash = Get-ContentHash -Content $stackFile.StackFileContent
                    # Also get the stack's updatedAt timestamp as additional check
                    $updatedAt = $stack.UpdatedAt
                    
                    $Hashes[$stack.Id.ToString()] = @{
                        name      = $stack.Name
                        hash      = $hash
                        type      = "portainer"
                        updatedAt = $updatedAt
                    }
                }
            }
            catch {
                Write-Host "[Auto-Backup] Could not get file for stack $($stack.Name): $_"
            }
        }
    }
    catch {
        Write-Host "[Auto-Backup] Warning: Could not get Portainer stacks: $_"
    }
    
    return $Hashes
}

# Create backup for a stack
function New-AutoBackup {
    param([int]$StackId, [string]$StackName)
    
    $stackVersionsDir = Join-Path $versionsDir $StackId
    
    # Create directory if not exists
    if (-not (Test-Path $stackVersionsDir)) {
        New-Item -Path $stackVersionsDir -ItemType Directory -Force | Out-Null
    }
    
    # Get current stack content
    try {
        $Headers = @{
            "X-API-KEY" = $env:PortainerAPIToken
        }
        
        $stackFile = Invoke-RestMethod -SkipCertificateCheck `
            -Uri ($env:PortainerBaseAddress.TrimEnd("/") + "/api/stacks/" + $StackId + "/file") `
            -Headers $Headers `
            -Method Get `
            -ErrorAction Stop
        
        $stackFileContent = $stackFile.StackFileContent
        
        # Create backup filename with timestamp
        $timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
        $safeStackName = $StackName -replace '[^\w\-]', '_'
        $backupFileName = "${safeStackName}_${timestamp}.yml"
        $backupFilePath = Join-Path $stackVersionsDir $backupFileName
        
        # Save the backup
        $stackFileContent | Out-File -FilePath $backupFilePath -Encoding UTF8 -Force
        
        Write-Host "[Auto-Backup] Created backup for stack '$StackName' (ID: $StackId)"
        
        # Send notification if enabled
        if ($env:NTFYEnabled -eq "$true") {
            Send-NTFYMessage -Message "Auto-backup created for stack: $StackName"
        }
    }
    catch {
        Write-Host "[Auto-Backup] Error creating backup for stack $StackName : $_"
    }
}

# Main loop
Write-Host "[Auto-Backup] Starting auto-backup service..."

# Initial wait to let other services start
Start-Sleep -Seconds 5

Write-Host "[Auto-Backup] Starting check loop..."

while ($true) {
    try {
        # Get current stack hashes
        $currentHashes = Get-PortainerStackHashes
        Write-Host "[Auto-Backup] Got $($currentHashes.Count) current hashes"
        
        $previousHashes = Get-StackHashes
        Write-Host "[Auto-Backup] Got $($previousHashes.Count) previous hashes"
        
        # Check each current stack
        foreach ($stackId in $currentHashes.Keys) {
            $currentStack = $currentHashes[$stackId]
            $previousStack = $previousHashes[$stackId]
            
            # Check if stack is new or hash changed
            # Convert to string to ensure proper comparison
            $prevHash = if ($previousStack) { [string]$previousStack.hash } else { "<none>" }
            $currHash = [string]$currentStack.hash
            $prevUpdated = if ($previousStack -and $previousStack.updatedAt) { [string]$previousStack.updatedAt } else { "<none>" }
            $currUpdated = if ($currentStack.updatedAt) { [string]$currentStack.updatedAt } else { "<none>" }
            
            $hashChanged = $prevHash -ne $currHash
            $timeChanged = $prevUpdated -ne $currUpdated
            
            Write-Host "[Auto-Backup] Stack '$($currentStack.name)': hashChanged=$hashChanged timeChanged=$timeChanged"
            
            if (-not $previousStack -or $hashChanged -or $timeChanged) {
                Write-Host "[Auto-Backup] Detected change in stack: $($currentStack.name) (ID: $stackId)"
                
                # Create backup - wrap in try/catch to not stop for one failed backup
                try {
                    New-AutoBackup -StackId ([int]$stackId) -StackName $currentStack.name
                }
                catch {
                    Write-Host "[Auto-Backup] Error creating backup for stack $($currentStack.name): $_"
                }
            }
        }
        
        # Save current hashes for next comparison (only if we got hashes)
        if ($currentHashes.Count -gt 0) {
            Save-StackHashes -Hashes $currentHashes
        }
        
    }
    catch {
        Write-Host "[Auto-Backup] Error in check loop: $_"
    }
    
    # Wait 20 seconds before next check
    Start-Sleep -Seconds 20
}
