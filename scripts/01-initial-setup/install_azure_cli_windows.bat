@echo off
echo Installing Azure CLI...
powershell -Command "Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile AzureCLI.msi; Start-Process msiexec.exe -ArgumentList '/i AzureCLI.msi /quiet' -NoNewWindow -Wait"
echo Azure CLI installed successfully.
