#!/bin/bash
echo installing docker for Ubuntu18.04
# Installs latest docker and nvidia toolkit to enable gpu acces inside of containers
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
apt-cache policy docker-ce
sudo apt-get install docker-ce docker-ce-cli containerd.io
echo install complete, now checking if successful
sudo systemctl status docker
sudo docker run hello-world

# To allow your user to run docker commands then execute the following else only root has access
echo adding ${USER} to the docker group
sudo usermod -aG docker ${USER}



echo now installing nvidia toolkit
# Add the package repositories
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

sudo apt-get update && sudo apt-get install -y nvidia-container-toolkit
sudo systemctl restart docker
sudo systemctl status docker
docker run --rm --gpus all nvidia/cuda:9.0-base nvidia-smi
