#!/bin/bash

# Name for container
NAME="pytorch1.6_cuda10.2"
# Hostname of container (used in tensorboard filenames)
HOSTNAME="dock"
docker run --rm -it \
    --shm-size="20G" \
    --name $NAME \
    --gpus '"device=1"' \
    --hostname $HOSTNAME \
    -v $HOME/repositories:/repositories \
    -v /etc/localtime:/etc/localtime:ro \
    -u josh \
    $NAME bash
