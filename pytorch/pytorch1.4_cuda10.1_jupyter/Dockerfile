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
RUN pip3 install --no-cache-dir numpy PILLOW opencv-python torch torchvision hdf5storage 
RUN pip3 install --no-cache-dir torch-scatter torch-sparse torch-cluster torch-spline-conv torch-geometric

# Following block is for jupyter notebooks
RUN pip3 install --no-cache-dir ipython
RUN pip3 install --no-cache-dir jupyter notebook
RUN pip3 install --no-cache-dir jupyter_contrib_nbextensions
RUN pip3 install --no-cache-dir jupyter_nbextensions_configurator
RUN jupyter contrib nbextension install --system
RUN jupyter nbextensions_configurator enable --system
RUN jupyter nbextension enable codefolding/main
RUN jupyter nbextension enable varInspector/main
RUN jupyter nbextension install --py jupyter_highlight_selected_word
RUN jupyter nbextension enable highlight_selected_word/main

RUN adduser --disabled-password --gecos '' josh
RUN adduser josh sudo
EXPOSE 8888
