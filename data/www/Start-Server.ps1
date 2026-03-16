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
            Write-PodeJsonResponse -Value @{
                success = $true
                data    = $versions
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
            $safePath = (Resolve-Path -Path (Join-Path $versionsDir (Split-Path $file -Leaf)) -ErrorAction Stop).Path

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
            } -StatusCode 500
        }
    }
}
