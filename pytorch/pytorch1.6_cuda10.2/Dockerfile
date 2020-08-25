FROM nvidia/cuda:10.2-cudnn8-devel-ubuntu18.04
MAINTAINER "JT"
RUN apt-get update \
 && apt-get install -yq\
    wget \
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
    software-properties-common
# 18.04 does not have python3.8 so add custom ppa
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update \
 && apt-get install -yq\
    python3.8-dev\
    python3-pip\
    python3-setuptools\
 && apt-get clean && rm -rf /var/lib/apt/lists/*

# Force default python to be 3.8
RUN ln -sf /usr/bin/python3.8 /usr/bin/python3

# Install the pytorch packages
RUN python3.8 -m pip install --upgrade pip
RUN python3.8 -m pip install --no-cache-dir torch==1.6.0 torchvision==0.7.0
RUN python3.8 -m pip install --no-cache-dir torch-scatter==latest+cu102 -f https://pytorch-geometric.com/whl/torch-1.6.0.html
RUN python3.8 -m pip install --no-cache-dir torch-sparse==latest+cu102 -f https://pytorch-geometric.com/whl/torch-1.6.0.html
RUN python3.8 -m pip install --no-cache-dir torch-cluster==latest+cu102 -f https://pytorch-geometric.com/whl/torch-1.6.0.html
RUN python3.8 -m pip install --no-cache-dir torch-spline-conv==latest+cu102 -f https://pytorch-geometric.com/whl/torch-1.6.0.html
RUN python3.8 -m pip install --no-cache-dir torch-geometric
RUN python3.8 -m pip install --no-cache-dir numpy PILLOW opencv-python autograd scipy hdf5storage tensorboard tqdm

RUN adduser --disabled-password --gecos '' josh
RUN adduser josh sudo

