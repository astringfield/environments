#!/bin/bash
# Installs latest docker and nvidia toolkit to enable gpu acces inside of containers

echo installing docker for Ubuntu, as per https://docs.docker.com/install/linux/docker-ce/ubuntu/
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt update && sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
apt-cache policy docker-ce
sudo apt-get install docker-ce docker-ce-cli containerd.io
echo install complete, now checking if successful
sudo systemctl status docker
sudo docker run hello-world

# To allow your user to run docker commands then execute the following, else only root has access
echo adding ${USER} to the docker group
sudo usermod -aG docker ${USER}



echo installing nvidia toolkit, as per https://github.com/NVIDIA/nvidia-docker
# Add the package repositories
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

sudo apt-get update && sudo apt-get install -y nvidia-container-toolkit
sudo systemctl restart docker
sudo systemctl status docker
echo testing nvidia toolkit, output of nvidia-smi should show
docker run --rm --gpus all nvidia/cuda:10.0-base nvidia-smi

# To change the default runtime to nvidi-container-runtime to grant gpu access during docker build
sudo tee /etc/docker/daemon.json <<EOF
{
    "runtimes": {
        "nvidia": {
            "path": "/usr/bin/nvidia-container-runtime",
            "runtimeArgs": []
        }
    }
}
EOF
sudo pkill -SIGHUP dockerd
sudo apt-get install nvidia-container-runtime
sudo systemctl restart docker.service

exit 0




#For an arch install use the following
sudo pacman -S docker
sudo systemctl start docker
sudo systemctl status docker

# To allow your user to run docker commands then execute the following, else only root has access
echo adding ${USER} to the docker group
sudo usermod -aG docker ${USER}

# Test docker install
docker run hello-world

# Nvidia tookit install
echo ensure nvidia drivers are up to date
yay -S libnvidia-container
yay -S nvidia-container-toolkit
docker run --rm --gpus all nvidia/cuda:10.0-base nvidia-smi

# To change the default runtime to nvidi-container-runtime to grant gpu access during docker build
sudo tee /etc/docker/daemon.json <<EOF
{
    "runtimes": {
        "nvidia": {
            "path": "/usr/bin/nvidia-container-runtime",
            "runtimeArgs": []
        }
    }
}
EOF
sudo systemctl stop docker.service
sudo pkill -SIGHUP dockerd
yay -S nvidia-container-runtime
sudo systemctl restart docker.service
