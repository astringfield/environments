#!/bin/bash

# First agument is CUDA device(s) number. eg) 1 or 0,3
if [ -z "$1" ]
then
    DEVICES="0"
    read -rp "Which CUDA devices?:" -e -i "$DEVICES" DEVICES
else
    DEVICES="$1"
fi

# Second argument is port for jupyter
if [ -z "$2" ]
then
    PORT="8888"
    read -rp "Which port?:" -e -i "$PORT" PORT
else
    PORT="$2"
fi

# Name for container
NAME="pytorch1.7_cuda11.0_jupyterlab"
# Hostname of container (used in tensorboard filenames)
HOSTNAME="dock"
docker run --rm -it --shm-size="20G" \
    --gpus "\"device=$DEVICES\"" \
    --name $NAME \
    --hostname $HOSTNAME \
    -u $USER \
    -p "$PORT:$PORT" \
    -v /home/josh/repositories/:/repositories \
    -v /etc/localtime:/etc/localtime:ro \
    $NAME \
    jupyter lab --port="$PORT" --ip=0.0.0.0 --allow-root --no-browser .
