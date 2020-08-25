#!/bin/bash

# Name for container
NAME="pytorch1.6_cuda10.2_jupyter"
# Hostname of container (used in tensorboard filenames)
HOSTNAME="dock"
docker run --rm -it --shm-size="20G" \
    --gpus '"device=0"' \
    --name $NAME \
    --hostname $HOSTNAME \
    -u josh \
    -p "8888:8888" \
    -v /home/josh/repositories/:/repositories \
    -v /etc/localtime:/etc/localtime:ro \
    $NAME \
    jupyter notebook --port=8888 --ip=0.0.0.0 --allow-root --no-browser .
