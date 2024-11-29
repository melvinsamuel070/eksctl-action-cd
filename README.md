# eksctl GitHub Action

This GitHub Action sets up `eksctl` for managing EKS clusters.

## Inputs

- `eksctl_url` (required): URL to download the eksctl binary.
- `aws_access_key_id` (required): AWS Access Key ID.
- `aws_secret_access_key` (required): AWS Secret Access Key.
- `aws_region` (optional): AWS Region (default: `us-east-1`).

## Example Usage

```yaml
name: Deploy with eksctl

on:
  push:
    branches:
      - main

jobs:
  deploy:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v3

      - name: Setup and deploy with eksctl
        uses: your-username/eksctl-action@v1
        with:
          eksctl_url: 'https://github.com/eksctl-io/eksctl/releases/download/v0.194.0/eksctl_Linux_amd64.tar.gz
          '
          aws_access_key_id: ${{ secrets.AWS_ACCESS_KEY_ID }}
          aws_secret_access_key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          aws_region: 'us-east-1'
