FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
MAINTAINER "JT"
RUN apt-get update && apt-get install -y\
    python3-dev\
    python3-pip\
    htop\
    virtualenv\
    git\
    curl\
    vim\
    sudo
RUN pip3 install numpy PILLOW opencv-python torch torchvision hdf5storage
RUN adduser --disabled-password --gecos '' josh
RUN adduser josh sudo
# Follwing pip packages require "--gpus all" flag to install, therefore this is done in build.sh script and not here.
#RUN pip3 install torch-scatter torch-sparse torch-cluster torch-spline-conv torch-geometric               
#ENTRYPOINT bash

