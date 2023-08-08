Set-ExecutionPolicy -ExecutionPolicy Unrestricted

# WSL Requirements
# REF: https://learn.microsoft.com/en-us/windows/wsl/install-manual
Enable-WindowsOptionalFeature -Online -FeatureName containers -All
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

shutdown -t 0 -r -f

wsl --set-default-version 2

wsl --update
wsl --shutdown

wsl --list --online
wsl --install -d ubuntu-22.04


# Install Docker Desktop with WSL
Invoke-WebRequest -Uri "https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe" -OutFile "Docker Desktop Installer.exe"

Start-Process 'Docker Desktop Installer.exe' -Wait -ArgumentList "install --accept-license --no-windows-containers --backend=wsl-2 --always-run-service --quiet"

# Add your user to the docker group
$currentUser= $(whoami)
Add-LocalGroupMember -Group "docker-users" -Member $currentUser
