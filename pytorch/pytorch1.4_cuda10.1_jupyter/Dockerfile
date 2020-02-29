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
 && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN pip3 install --upgrade pip
RUN pip3 install numpy PILLOW opencv-python torch torchvision hdf5storage 
RUN pip3 install ipython
RUN pip3 install jupyter notebook
RUN adduser --disabled-password --gecos '' josh
RUN adduser josh sudo
EXPOSE 8888
