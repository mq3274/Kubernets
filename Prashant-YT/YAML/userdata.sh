#!/bin/bash
# Update packages
sudo apt-get update -y

# Install Docker
sudo apt-get install -y docker.io

# Start & enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Add ubuntu user to docker group
sudo usermod -aG docker ubuntu

# Ensure Docker works
docker --version >> /home/ubuntu/docker_install.log 2>&1

