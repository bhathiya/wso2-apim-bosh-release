#!/bin/bash

set -e

echo "Creating WSO2 API-M bosh release..."
bosh -e vbox create-release --force

echo "Uploading WSO2 API-M bosh release to bosh director..."
bosh -e vbox upload-release

echo "Deploying WSO2 API-M bosh release..."
bosh -e vbox -d wso2apim deploy wso2apim-manifest.yml
echo "DONE!"
