Write-Output "[INFO] Starting Windows update..."

Install-Module PSWindowsUpdate -Force -Confirm:$false
Import-Module PSWindowsUpdate

# Install available updates
Get-WindowsUpdate -AcceptAll -Install -AutoReboot

Write-Output "[INFO] Windows update complete."
