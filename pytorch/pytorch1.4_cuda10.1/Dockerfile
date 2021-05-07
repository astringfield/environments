FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
MAINTAINER "JT"
ARG TZ
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
    tmux \
 && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir torch==1.4.0 torchvision==0.5.0
RUN pip3 install --no-cache-dir torch-scatter==2.0.4 -f https://pytorch-geometric.com/whl/torch-1.4.0+cu101.html
RUN pip3 install --no-cache-dir torch-sparse==0.6.1 -f https://pytorch-geometric.com/whl/torch-1.4.0+cu101.html
RUN pip3 install --no-cache-dir torch-cluster==1.5.4 -f https://pytorch-geometric.com/whl/torch-1.4.0+cu101.html
RUN pip3 install --no-cache-dir torch-spline-conv==1.2.0 -f https://pytorch-geometric.com/whl/torch-1.4.0+cu101.html
RUN pip3 install --no-cache-dir torch-geometric==1.4.3
RUN pip3 install --no-cache-dir numpy PILLOW opencv-python autograd scipy hdf5storage tqdm

ARG HOST_USER
ARG HOST_UID
RUN adduser --uid $HOST_UID --disabled-password --gecos '' $HOST_USER
RUN adduser $HOST_USER sudo
