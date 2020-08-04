FROM nvidia/cuda:10.2-cudnn8-devel-ubuntu18.04
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
RUN pip3 install --no-cache-dir torch==1.6.0 torchvision==0.7.0
RUN pip install --no-cache-dir torch-scatter==latest+cu102 -f https://pytorch-geometric.com/whl/torch-1.6.0.html
RUN pip install --no-cache-dir torch-sparse==latest+cu102 -f https://pytorch-geometric.com/whl/torch-1.6.0.html
RUN pip install --no-cache-dir torch-cluster==latest+cu102 -f https://pytorch-geometric.com/whl/torch-1.6.0.html
RUN pip install --no-cache-dir torch-spline-conv==latest+cu102 -f https://pytorch-geometric.com/whl/torch-1.6.0.html
RUN pip install --no-cache-dir torch-geometric==1.6.0
RUN pip3 install --no-cache-dir numpy PILLOW opencv-python autograd scipy hdf5storage tqdm
RUN adduser --disabled-password --gecos '' josh
RUN adduser josh sudo

