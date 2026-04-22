<#
.SYNOPSIS
Monitors the current user's OneDrive folder size and logs a warning if it exceeds a defined threshold.

.DESCRIPTION
This script is intended for use in a small hybrid AD + OneDrive security lab.
It checks the user's OneDrive for Business folder (or fallback OneDrive folder),
calculates total size, and writes a warning message to a local log file if the
size exceeds the configured threshold in GB.

It can also write to the Windows Application log if the event source already exists.

.PARAMETER WarnThresholdGB
The size threshold in GB that triggers a warning log entry.

.EXAMPLE
.\onedrive-monitor.ps1 -WarnThresholdGB 5
#>

param(
    [int]$WarnThresholdGB = 5
)

# Try to find the OneDrive for Business path first
$oneDriveRoot = $env:OneDriveCommercial

# Fall back to standard OneDrive path if needed
if (-not $oneDriveRoot) {
    $oneDriveRoot = $env:OneDrive
}

# Exit quietly if no OneDrive folder is available
if (-not $oneDriveRoot -or -not (Test-Path $oneDriveRoot)) {
    exit 0
}

# Calculate total size of files in the OneDrive folder
$bytes = (
    Get-ChildItem -LiteralPath $oneDriveRoot -Recurse -Force -ErrorAction SilentlyContinue |
    Measure-Object -Property Length -Sum
).Sum

# Handle empty result safely
if (-not $bytes) {
    $bytes = 0
}

$sizeGB = [math]::Round(($bytes / 1GB), 2)

# Create a per-user log folder under LOCALAPPDATA
$logDir = Join-Path $env:LOCALAPPDATA "HybridLab"
New-Item -ItemType Directory -Path $logDir -Force | Out-Null

# Define log file location
$logFile = Join-Path $logDir "OneDriveMonitor.log"

# If threshold is exceeded, write a warning entry
if ($sizeGB -ge $WarnThresholdGB) {
    $msg = "$(Get-Date -Format o) - WARNING: OneDrive size ${sizeGB} GB (threshold ${WarnThresholdGB} GB). User: $env:USERNAME"

    Add-Content -Path $logFile -Value $msg

    # Optional: also write to Windows Application log if source already exists
    $source = "HybridLab-OneDriveMonitor"
    if ([System.Diagnostics.EventLog]::SourceExists($source)) {
        Write-EventLog -LogName Application -Source $source -EventId 3001 -EntryType Warning -Message $msg
    }
}
else {
    $msg = "$(Get-Date -Format o) - OK: OneDrive size ${sizeGB} GB is below threshold ${WarnThresholdGB} GB. User: $env:USERNAME"
    Add-Content -Path $logFile -Value $msg
}