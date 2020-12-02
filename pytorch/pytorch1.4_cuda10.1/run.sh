#!/bin/bash

# First agument is CUDA device(s) number. eg) 1 or 0,3

if [ -z "$1" ]
then
    DEVICES="0"
    read -rp "Which CUDA devices?:" -e -i "$DEVICES" DEVICES
else
    DEVICES="$1"
fi

#name for container
NAME="pytorch1.4_cuda10.1"
HOSTNAME="dock"

docker run -it --rm \
    --shm-size="20G" \
    --name "$NAME""_dev$(echo $DEVICES | sed 's/,//')" \
    --gpus "\"device=$DEVICES\"" \
    --hostname $HOSTNAME \
    -v $HOME/repositories:/repositories \
    -v /etc/localtime:/etc/localtime:ro \
    -u $USER \
    $NAME bash
