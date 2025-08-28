# UpdateGitRepos.ps1

$basePath = "the path to the root folder of git projects (example: F:\git)"
$pingTarget = "github.com"
$retryDelay = 10

function Wait-ForInternet {
    Write-Host "Checking internet connection..."
    while (-not (Test-Connection -ComputerName $pingTarget -Count 1 -Quiet)) {
        Write-Host "No internet connection. Retrying in $retryDelay seconds..."
        Start-Sleep -Seconds $retryDelay
    }
    Write-Host "Internet connection established."
}

function Update-GitReposInFolders {
    param (
        [string]$rootPath
    )

    $folders = Get-ChildItem -Path $rootPath -Recurse -Directory

    foreach ($folder in $folders) {
        $gitFolder = Join-Path $folder.FullName ".git"
        if (Test-Path $gitFolder) {
            Write-Host "`nEntering: $($folder.FullName)" -ForegroundColor Cyan
            try {
                Set-Location $folder.FullName
                $output = git pull 2>&1
                Write-Host $output
            } catch {
                Write-Host "Error running 'git pull' in $($folder.FullName): $_" -ForegroundColor Red
            }
        } else {
            Write-Host "Skipping (not a git repo): $($folder.FullName)"
        }
    }
}

# --- Main Script ---

Wait-ForInternet
Update-GitReposInFolders -rootPath $basePath

Write-Host "`nAll git repositories updated. Press any key to exit..."
[void][System.Console]::ReadKey($true)
