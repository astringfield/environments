FROM nvidia/cuda:11.3.1-cudnn8-runtime-ubuntu20.04
MAINTAINER "JoshThorpe"
ARG TZ
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update \
 && apt-get install -yq \
    wget \
    htop \
    virtualenv \
    git \
    curl \
    vim \
    neovim \
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
    software-properties-common \
    npm \
    build-essential \
    freeglut3-dev \
    texlive-xetex texlive-fonts-recommended texlive-plain-generic pandoc \
 && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
 && apt-get install -y nodejs \
 && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN apt-get update \
 && apt-get install -yq\
    python3.8-dev\
    python3-pip\
    python3-setuptools\
 && apt-get clean && rm -rf /var/lib/apt/lists/*

# Force default python to be 3.8
RUN ln -sf /usr/bin/python3.8 /usr/bin/python3

# Setup User
ARG HOST_USER
ARG HOST_UID
RUN adduser --uid $HOST_UID --disabled-password --gecos '' $HOST_USER
RUN addgroup --gid 1008 nas
RUN adduser $HOST_USER sudo
RUN adduser $HOST_USER nas
USER $HOST_USER
