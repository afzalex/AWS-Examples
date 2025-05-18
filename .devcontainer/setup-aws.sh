#!/bin/bash

set -e

echo "Installing AWS CLI..."

# https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Cleanup
rm -rf awscliv2.zip aws

# Verify installation
aws --version

echo "✅ AWS CLI installed successfully!"
