#!/bin/bash

set -e

# Inputs
EKSCTL_URL=$1
AWS_ACCESS_KEY_ID=$2
AWS_SECRET_ACCESS_KEY=$3
AWS_REGION=$4

# Export AWS credentials
export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
export AWS_REGION=$AWS_REGION

# Download and set up eksctl
curl -o /tmp/eksctl_Linux_amd64.tar.gz -L "$EKSCTL_URL"

# Extract the binary to /tmp and move it to /usr/local/bin for global access
tar -xzf /tmp/eksctl_Linux_amd64.tar.gz -C /tmp
mv /tmp/eksctl /usr/local/bin/

# Verify eksctl installation
eksctl version

# Run user-provided eksctl commands (customize this as needed)
echo "eksctl is set up. Add your commands here."
