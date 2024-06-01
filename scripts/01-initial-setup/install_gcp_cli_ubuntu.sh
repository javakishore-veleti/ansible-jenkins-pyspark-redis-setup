#!/bin/bash
echo "Installing GCP CLI..."
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-367.0.0-linux-x86_64.tar.gz
tar -xf google-cloud-sdk-367.0.0-linux-x86_64.tar.gz
./google-cloud-sdk/install.sh
echo "GCP CLI installed successfully."
