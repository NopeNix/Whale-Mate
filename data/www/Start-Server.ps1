Import-Module Pode

# Prep
if ($null -ne $env:PortainerBaseAddress -or $env:PortainerBaseAddress -eq "") {
    $env:PortainerBaseAddress = $env:PortainerBaseAddress.TrimEnd("/")
}

Start-PodeServer -Verbose {
    Add-PodeEndpoint -Address * -Port 8080 -Protocol Http
    
    # Stacks
    Add-PodeRoute -Method Get -Path "/" -ScriptBlock {
        Write-PodeHtmlResponse (Get-Content ($PSScriptRoot + "/html/stacks.html") -Raw)
    }
    Add-PodeRoute -Method Get -Path "/stacks.html" -ScriptBlock {
        Write-PodeHtmlResponse (Get-Content ($PSScriptRoot + "/html/stacks.html") -Raw)
    }
    
    # Logs
    Add-PodeRoute -Method Get -Path "/logs.html" -ScriptBlock {
        Write-PodeHtmlResponse (Get-Content ($PSScriptRoot + "/html/logs.html") -Raw)
    }
    
    # Versioning
    Add-PodeRoute -Method Get -Path "/versioning.html" -ScriptBlock {
        Write-PodeHtmlResponse (Get-Content ($PSScriptRoot + "/html/versioning.html") -Raw)
    }

    # Portainer: Stacks API
    Add-PodeRoute -Method Get -Path "/api/portainer/stacks" -ScriptBlock {
        if ($null -eq $env:PortainerBaseAddress -or $env:PortainerBaseAddress.trim() -eq "") {
            Write-PodeJsonResponse -Value @{
                success = $false
                error   = ("Portainer Stacks is disabled because no PortainerBaseAddress was given")
            } -StatusCode 500
        }
        else {
        
            . ($PSScriptRoot + "/../functions.ps1")
            # Get Token
            try {
                # Get Stacks
                try {
                    $stats = Get-PortainerStacks
                    Write-PodeJsonResponse -Value @{
                        success = $true
                        data    = $stats
                    }
                }
                catch {
                    Write-PodeJsonResponse -Value @{
                        success = $false
                        error   = ("Was not able to get Portainer Stacks. " + $_.Exception.Message)
                    } -StatusCode 500
                }
            }
            catch {
                Write-PodeJsonResponse -Value @{
                    success = $false
                    error   = ("Was not able to get a JWT Token. " + $_.Exception.Message)
                } -StatusCode 500
            }
        }
    }
        
    # Docker Compose: Stacks API
    Add-PodeRoute -Method Get -Path "/api/docker-compose/stacks" -ScriptBlock {
        docker ps | Out-Null
        if ($? -eq $false) {
            Write-PodeJsonResponse -Value @{
                success = $false
                error   = ("Docker Stacks is disabled because 'docker ps' resulted in an error")
            } -StatusCode 500
        }
        else {
            . ($PSScriptRoot + "/../functions.ps1")
        
            # Get Stacks
            try {
                $stats = Get-DockerComposeStacks
                Write-PodeJsonResponse -Value @{
                    success = $true
                    data    = $stats
                }
            }
            catch {
                Write-PodeJsonResponse -Value @{
                    success = $false
                    error   = ("Was not able to get Docker Compose Stacks. " + $_.Exception.Message)
                } -StatusCode 500
            }
        }
    }
    
    # Portainer: StackUpdateStatus API
    Add-PodeRoute -Method Post -Path "/api/portainer/stack-update-status" -ScriptBlock {
        . ($PSScriptRoot + "/../functions.ps1")
        try {
            $StackUpdateStatus = Get-PortainerStacksUpdateStatus -StackID $WebEvent.Data.StackID
            Write-PodeJsonResponse -Value @{
                success = $true
                data    = $StackUpdateStatus
            }
        }
        catch {
            Write-PodeJsonResponse -Value @{
                success      = $false
                error        = $_.Exception.Message
                requested_id = $WebEvent.Data.StackID
            } -StatusCode 500
        }
    }

    # Docker Compose: StackUpdateStatus API
    Add-PodeRoute -Method Get -Path "/api/docker-compose/stack-update-status" -ScriptBlock {
        . ($PSScriptRoot + "/../functions.ps1")
        try {
            $StackUpdateStatus = bash ../dockcheck.sh | ConvertFrom-Json
            Write-PodeJsonResponse -Value @{
                success = $true
                data    = $StackUpdateStatus
            }
        }
        catch {
            Write-PodeJsonResponse -Value @{
                success      = $false
                error        = $_.Exception.Message
                requested_id = $WebEvent.Data.StackID
            } -StatusCode 500
        }
    }

    # Log API
    Add-PodeRoute -Method Get -Path "/api/logs" -ScriptBlock {
        Write-PodeJsonResponse @{log = (Get-Content "/data/db/updatelog.log")}
    }

    # ============================================
    # Versioning API Endpoints
    # ============================================

    # Get version history for a stack
    Add-PodeRoute -Method Get -Path "/api/portainer/stack-versions/:StackId" -ScriptBlock {
        . ($PSScriptRoot + "/../functions.ps1")

        $stackId = $WebEvent.Parameters['StackId']

        try {
            $versions = Get-StackVersionHistory -StackId $stackId
            # Force to array to ensure proper JSON serialization
            $versionsArray = @($versions)
            Write-PodeJsonResponse -Value @{
                success = $true
                data    = $versionsArray
            }
        }
        catch {
            Write-PodeJsonResponse -Value @{
                success = $false
                error   = $_.Exception.Message
            } -StatusCode 500
        }
    }

    # Get version file content
    Add-PodeRoute -Method Get -Path "/api/portainer/stack-version-file" -ScriptBlock {
        $file = $WebEvent.Query['file']

        if (-not $file) {
            Write-PodeJsonResponse -Value @{
                success = $false
                error   = "File parameter is required"
            } -StatusCode 400
            return
        }

        try {
            # Security: only allow files in the versions directory
            $versionsDir = "/data/versions"
            
            # Resolve the full path as-is to preserve stack ID directory
            $safePath = (Resolve-Path -Path $file -ErrorAction Stop).Path

            if (-not $safePath.StartsWith($versionsDir)) {
                throw "Invalid file path"
            }

            $content = Get-Content -Path $safePath -Raw -ErrorAction Stop
            Write-PodeTextResponse -Value $content
        }
        catch {
            Write-PodeJsonResponse -Value @{
                success = $false
                error   = $_.Exception.Message
            } -StatusCode 500
        }
    }

    # Backup a specific stack now
    Add-PodeRoute -Method Post -Path "/api/portainer/backup-stack" -ScriptBlock {
        . ($PSScriptRoot + "/../functions.ps1")

        $stackId = $WebEvent.Data.StackID

        if (-not $stackId) {
            Write-PodeJsonResponse -Value @{
                success = $false
                error   = "StackID is required"
            } -StatusCode 400
            return
        }

        try {
            Backup-PortainerStack -StackId $stackId
            Write-PodeJsonResponse -Value @{
                success = $true
                data    = @{ message = "Backup created successfully" }
            }
        }
        catch {
            Write-PodeJsonResponse -Value @{
                success = $false
                error   = $_.Exception.Message
            }             -StatusCode 500
        }
    }

    # Restore a stack from backup
    Add-PodeRoute -Method Post -Path "/api/portainer/restore-stack" -ScriptBlock {
        . ($PSScriptRoot + "/../functions.ps1")

        $stackId = $WebEvent.Data.StackID
        $filePath = $WebEvent.Data.FilePath

        if (-not $stackId) {
            Write-PodeJsonResponse -Value @{
                success = $false
                error   = "StackID is required"
            } -StatusCode 400
            return
        }

        if (-not $filePath) {
            Write-PodeJsonResponse -Value @{
                success = $false
                error   = "FilePath is required"
            } -StatusCode 400
            return
        }

        try {
            # Security: validate the file path is within versions directory
            $versionsDir = "/data/versions"
            $safePath = (Resolve-Path -Path $filePath -ErrorAction Stop).Path

            if (-not $safePath.StartsWith($versionsDir)) {
                throw "Invalid file path"
            }

            # Read the backup file content
            $stackContent = Get-Content -Path $safePath -Raw -ErrorAction Stop

            # Get current stack info from Portainer
            $Headers = @{
                "X-API-KEY" = $env:PortainerAPIToken
            }

            $currentStack = Invoke-RestMethod -SkipCertificateCheck `
                -Uri ($env:PortainerBaseAddress + "/api/stacks/" + $stackId) `
                -Headers $Headers `
                -Method Get `
                -ErrorAction Stop

            # Determine the endpoint based on stack type
            $endpointId = $currentStack.EndpointId
            $stackName = $currentStack.Name

            # Update the stack with the backup content
            # Using the update endpoint
            $updatePayload = @{
                StackFileContent = $stackContent
            }

            $updateResponse = Invoke-RestMethod -SkipCertificateCheck `
                -Uri ($env:PortainerBaseAddress + "/api/stacks/" + $stackId + "/update?endpointId=" + $endpointId) `
                -Headers $Headers `
                -Method Put `
                -Body ($updatePayload | ConvertTo-Json -Depth 10) `
                -ContentType "application/json" `
                -ErrorAction Stop

            Write-PodeJsonResponse -Value @{
                success = $true
                data    = @{ message = "Stack '$stackName' restored successfully from backup" }
            }
        }
        catch {
            Write-PodeJsonResponse -Value @{
                success = $false
                error   = $_.Exception.Message
            } -StatusCode 500
        }
    }

    # Get latest activity across all stacks
    Add-PodeRoute -Method Get -Path "/api/portainer/latest-activity" -ScriptBlock {
        . ($PSScriptRoot + "/../functions.ps1")

        try {
            $versionsDir = "/data/versions"
            
            if (-not (Test-Path $versionsDir)) {
                Write-PodeJsonResponse -Value @{
                    success = $true
                    data    = @()
                }
                return
            }

            $latestActivity = @()
            $stackDirs = Get-ChildItem -Path $versionsDir -Directory -ErrorAction SilentlyContinue
            
            foreach ($stackDir in $stackDirs) {
                $latestFile = Get-ChildItem -Path $stackDir.FullName -Filter "*.yml" -ErrorAction SilentlyContinue | 
                              Sort-Object LastWriteTime -Descending | 
                              Select-Object -First 1
                
                if ($latestFile) {
                    # Get stack name from filename (remove timestamp part)
                    $fileName = $latestFile.Name
                    $stackName = $fileName -replace '_\d{4}-\d{2}-\d{2}_\d{2}-\d{2}-\d{2}\.yml$', ''
                    
                    $latestActivity += @{
                        stackId   = $stackDir.Name
                        stackName = $stackName
                        timestamp = $latestFile.LastWriteTime.ToString("o")
                        file      = $latestFile.FullName
                        size      = $latestFile.Length
                    }
                }
            }

            # Sort by timestamp descending
            $latestActivity = $latestActivity | Sort-Object { $_.timestamp } -Descending

            Write-PodeJsonResponse -Value @{
                success = $true
                data    = $latestActivity
            }
        }
        catch {
            Write-PodeJsonResponse -Value @{
                success = $false
                error   = $_.Exception.Message
            } -StatusCode 500
        }
    }
}
