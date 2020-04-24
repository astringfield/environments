FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
MAINTAINER "JT"
RUN apt-get update \
 && apt-get install -yq\
    wget \
    python3-dev\
    python3-pip\
    python3-setuptools\
    htop\
    virtualenv\
    git\
    curl\
    vim\
    bzip2 \
    ca-certificates \
    sudo \
    locales \
    fonts-liberation \
    run-one \
    ffmpeg \
    zip \
    unzip \
 && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir torch==1.4.0 torchvision==0.5.0
RUN pip3 install --no-cache-dir torch-scatter torch-sparse torch-cluster torch-spline-conv torch-geometric
RUN pip3 install --no-cache-dir numpy PILLOW opencv-python autograd scipy hdf5storage tqdm
RUN adduser --disabled-password --gecos '' josh
RUN adduser josh sudo

