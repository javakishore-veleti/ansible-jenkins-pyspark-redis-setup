#!/bin/bash

install_aws_cli() {
  if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Detected Linux environment. Installing AWS CLI..."
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "$HOME/awscliv2.zip" || true
    unzip "$HOME/awscliv2.zip" -d "$HOME" || true
    sudo "$HOME/aws/install" || true
    rm -rf "$HOME/aws" "$HOME/awscliv2.zip" || true
    echo "AWS CLI installation attempted."
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detected macOS environment. Installing AWS CLI..."
    curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "$HOME/AWSCLIV2.pkg" || true
    sudo installer -pkg "$HOME/AWSCLIV2.pkg" -target / || true
    rm "$HOME/AWSCLIV2.pkg" || true
    echo "AWS CLI installation attempted."
  elif [[ "$OS" == "Windows_NT" ]]; then
    echo "Detected Windows environment. Installing AWS CLI..."
    msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi /qn || true
    echo "AWS CLI installation attempted."
  else
    echo "Unsupported OS. Please install AWS CLI manually."
  fi
}

install_azure_cli() {
  if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Detected Linux environment. Installing Azure CLI..."
    curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash || true
    echo "Azure CLI installation attempted."
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detected macOS environment. Installing Azure CLI..."
    brew update && brew install azure-cli || true
    echo "Azure CLI installation attempted."
  elif [[ "$OS" == "Windows_NT" ]]; then
    echo "Detected Windows environment. Installing Azure CLI..."
    powershell -Command "Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile AzureCLI.msi; Start-Process msiexec.exe -ArgumentList '/i AzureCLI.msi /quiet' -NoNewWindow -Wait" || true
    rm AzureCLI.msi || true
    echo "Azure CLI installation attempted."
  else
    echo "Unsupported OS. Please install Azure CLI manually."
  fi
}

install_gcp_cli() {
  if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Detected Linux environment. Installing GCP CLI..."
    curl -o "$HOME/google-cloud-sdk.tar.gz" https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk.tar.gz || true
    tar -xf "$HOME/google-cloud-sdk.tar.gz" -C "$HOME" || true
    "$HOME/google-cloud-sdk/install.sh" --quiet || true
    rm -rf "$HOME/google-cloud-sdk.tar.gz" || true
    echo "GCP CLI installation attempted."
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detected macOS environment. Installing GCP CLI..."
    curl -o "$HOME/google-cloud-sdk.tar.gz" https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk.tar.gz || true
    tar -xf "$HOME/google-cloud-sdk.tar.gz" -C "$HOME" || true
    "$HOME/google-cloud-sdk/install.sh" --quiet || true
    rm -rf "$HOME/google-cloud-sdk.tar.gz" || true
    echo "GCP CLI installation attempted."
  elif [[ "$OS" == "Windows_NT" ]]; then
    echo "Detected Windows environment. Installing GCP CLI..."
    powershell -Command "Invoke-WebRequest -Uri https://dl.google.com/dl/cloudsdk/channels/rapid/GoogleCloudSDKInstaller.exe -OutFile $HOME/GoogleCloudSDKInstaller.exe; Start-Process $HOME/GoogleCloudSDKInstaller.exe -ArgumentList '/S' -NoNewWindow -Wait" || true
    rm "$HOME/GoogleCloudSDKInstaller.exe" || true
    echo "GCP CLI installation attempted."
  else
    echo "Unsupported OS. Please install GCP CLI manually."
  fi
}

install_aws_cli
install_azure_cli
install_gcp_cli
