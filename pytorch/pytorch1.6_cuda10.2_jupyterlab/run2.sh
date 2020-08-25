#!/bin/bash

# Name for container
NAME="pytorch1.6_cuda10.2_jupyterlab"
# Hostname of container (used in tensorboard filenames)
HOSTNAME="dock"
docker run --rm -it --shm-size="20G" \
    --gpus '"device=1"' \
    --name "$NAME_2" \
    --hostname $HOSTNAME \
    -u josh \
    -p "8889:8889" \
    -v /home/josh/repositories/:/repositories \
    -v /etc/localtime:/etc/localtime:ro \
    $NAME \
    jupyter lab --port=8889 --ip=0.0.0.0 --allow-root --no-browser .
