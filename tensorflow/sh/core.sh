#!/bin/bash

apt-get update
# Install build tools
apt-get install -y build-essential \
                   git curl vim libcairo2-dev \
                   libav-tools nfs-common portmap apt-transport-https \
                   ca-certificates software-properties-common

curl https://get.docker.com | sh

# add user to docker group
usermod -aG docker ubuntu
