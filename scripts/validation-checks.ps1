Write-Host "Refreshing policy..."
gpupdate /force

Write-Host "Showing applied Group Policy results..."
gpresult /r

Write-Host "Checking OneDrive policy registry paths..."
Write-Host "`nHKLM OneDrive Policies"
reg query "HKLM\SOFTWARE\Policies\Microsoft\OneDrive"

Write-Host "`nHKCU OneDrive Policies"
reg query "HKCU\SOFTWARE\Policies\Microsoft\OneDrive"