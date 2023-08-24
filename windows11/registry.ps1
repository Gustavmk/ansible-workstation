$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications"
$registryName = "DisableNotifications"
$registryValue = 1  # DWORD value

# Check if the registry path exists, if not, create it
if (-not (Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force
}

# Set the registry value
Set-ItemProperty -Path $registryPath -Name $registryName -Value $registryValue

Write-Host "Notifications in Windows Defender Security Center have been disabled."
