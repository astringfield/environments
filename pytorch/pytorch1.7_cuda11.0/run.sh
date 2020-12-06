#!/bin/bash

# First agument is CUDA device(s) number. eg) 1 or 0,3

if [ -z "$1" ]
then
    DEVICES="0"
    read -rp "Which CUDA devices?:" -e -i "$DEVICES" DEVICES
else
    DEVICES="$1"
fi

# Name for container
NAME="pytorch1.7_cuda11.0"
# Hostname of container (used in tensorboard filenames)
HOSTNAME="dock"
docker run --rm -it \
    --shm-size="20G" \
    --name "$NAME""_dev$(echo $DEVICES | sed 's/,//')" \
    --gpus "\"device=$DEVICES\"" \
    --hostname $HOSTNAME \
    -v $HOME/repositories:/repositories \
    -v /etc/localtime:/etc/localtime:ro \
    -u $USER \
    $NAME bash
