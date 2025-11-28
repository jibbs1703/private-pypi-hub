#!/bin/bash

sudo apt-get update
sudo apt-get install -y docker.io
sudo apt-get install -y docker-compose
sudo apt install apache2-utils

sudo apt-get autoremove -y

sudo systemctl enable docker
sudo systemctl start docker

sudo docker --version

sudo usermod -aG docker $USER
newgrp docker

echo "Docker installation and setup complete."
echo "Please log back in to apply the user group changes."
exit
