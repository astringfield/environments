#!/bin/bash

#name for container
NAME="pytorch1.4_cuda10.1"
HOSTNAME="dock"

docker run -it --rm \
    --shm-size="20G" \
    --name "$NAME""_dev1" \
    --gpus '"device=1"' \
    --hostname $HOSTNAME \
    -v $HOME/repositories:/repositories \
    -v /etc/localtime:/etc/localtime:ro \
    -u josh \
    $NAME bash
