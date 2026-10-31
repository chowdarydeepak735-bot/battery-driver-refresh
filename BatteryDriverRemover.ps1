$desktop = [Environment]::GetFolderPath("Desktop")
$scriptPath = Join-Path $desktop "BatteryDriverRemover.ps1"
$shortcutPath = Join-Path $desktop "Battery Driver Remover.lnk"

$script = @'
$ErrorActionPreference = "Continue"

Write-Host "=== BATTERY DRIVER REMOVER ===" -ForegroundColor Cyan

$drivers = @(
    "Microsoft ACPI-Compliant Control Method Battery",
    "Microsoft AC Adapter"
)

foreach ($name in $drivers) {
    Write-Host "`nRemoving: $name" -ForegroundColor Yellow

    $devices = Get-PnpDevice -FriendlyName $name -ErrorAction SilentlyContinue

    if (!$devices) {
        Write-Host "Device not found." -ForegroundColor DarkYellow
        continue
    }

    foreach ($device in $devices) {
        pnputil.exe /remove-device "$($device.InstanceId)"
    }
}

Write-Host "`nOperation completed." -ForegroundColor Green

$answer = Read-Host "Restart laptop now? (Y/N)"

if ($answer -eq "Y") {
    Write-Host "Restarting in 15 seconds..."
    Start-Sleep -Seconds 15
    Restart-Computer -Force
}
else {
    Write-Host "Restart cancelled."
    Read-Host "Press Enter to exit"
}
'@

Set-Content -Path $scriptPath -Value $script

$ws = New-Object -ComObject WScript.Shell
$link = $ws.CreateShortcut($shortcutPath)

$link.TargetPath = "$env:SystemRoot\System32\WindowsPowerShell\v1.0\powershell.exe"
$link.Arguments = "-NoProfile -ExecutionPolicy Bypass -File `"$scriptPath`""
$link.WorkingDirectory = $desktop
$link.Description = "Battery Driver Maintenance"

$link.Save()

Write-Host "Shortcut created on Desktop!" -ForegroundColor Green
