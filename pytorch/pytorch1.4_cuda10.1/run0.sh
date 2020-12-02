#!/bin/bash

#name for container
NAME="pytorch1.4_cuda10.1"
HOSTNAME="dock"

docker run -it --rm \
    --shm-size="20G" \
    --name "$NAME""_dev0" \
    --gpus '"device=0"' \
    --hostname $HOSTNAME \
    -v $HOME/repositories:/repositories \
    -v /etc/localtime:/etc/localtime:ro \
    -u josh \
    $NAME bash
