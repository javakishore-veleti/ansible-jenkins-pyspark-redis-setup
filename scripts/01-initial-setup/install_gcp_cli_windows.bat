@echo off
echo Installing GCP CLI...
powershell -Command "Invoke-WebRequest -Uri https://dl.google.com/dl/cloudsdk/channels/rapid/GoogleCloudSDKInstaller.exe -OutFile GoogleCloudSDKInstaller.exe; Start-Process GoogleCloudSDKInstaller.exe -ArgumentList '/S' -NoNewWindow -Wait"
echo GCP CLI installed successfully.
