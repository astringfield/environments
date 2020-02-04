FROM nvidia/cuda:10.1-base-ubuntu18.04
MAINTAINER "JT"
RUN ["apt", "update"]
RUN [ "apt" ,"install", "-y", "python3-dev", "python3-pip", "htop", "virtualenv", "git"]
RUN ["pip3", "install", "numpy", "PILLOW", "opencv-python", "torch", "torchvision", "torch-scatter", "torch-sparse", "torch-cluster", "torch-spline-conv", "torch-geometric"]               
ENTRYPOINT bash

