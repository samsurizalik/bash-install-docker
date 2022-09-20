#!/bin/bash
echo "Update repo ubuntu"
sudo apt update
echo "Install http transport"
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
echo "Download gpg repo docker"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "Add repository docker"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
echo "Check docker list available"
apt-cache policy docker-ce
echo "Install Docker & Docker Compose"
sudo apt install docker-ce docker-compose -y
echo "Enable start service on StartUP"
sudo systemctl enable docker
sudo systemctl status docker
