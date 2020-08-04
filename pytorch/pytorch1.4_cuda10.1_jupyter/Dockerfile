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
RUN pip install --no-cache-dir torch-scatter==latest+cu101 -f https://pytorch-geometric.com/whl/torch-1.4.0.html
RUN pip install --no-cache-dir torch-sparse==latest+cu101 -f https://pytorch-geometric.com/whl/torch-1.4.0.html
RUN pip install --no-cache-dir torch-cluster==latest+cu101 -f https://pytorch-geometric.com/whl/torch-1.4.0.html
RUN pip install --no-cache-dir torch-spline-conv==latest+cu101 -f https://pytorch-geometric.com/whl/torch-1.4.0.html
RUN pip install --no-cache-dir torch-geometric==1.4.3
RUN pip3 install --no-cache-dir numpy PILLOW opencv-python autograd scipy hdf5storage 
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
