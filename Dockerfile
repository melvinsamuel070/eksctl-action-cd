# Use a base image with a minimal environment
FROM ubuntu:20.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies for eksctl (curl, tar, and dependencies)
RUN apt-get update && apt-get install -y \
    curl \
    tar \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Download and install eksctl globally
RUN curl -sSL -o /usr/local/bin/eksctl https://github.com/eksctl-io/eksctl/releases/download/v0.194.0/eksctl_Linux_amd64\
    && chmod +x /usr/local/bin/eksctl

# Verify installation
RUN eksctl version

# Set the default command (can be overridden)
CMD ["bash"]
