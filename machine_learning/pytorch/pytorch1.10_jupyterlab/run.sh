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

# Name for docker image set to the parent dir of this script
NAME="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd | sed 's:.*/::' )"

# Hostname of container (used in tensorboard filenames)
HOSTNAME="dock"
docker run --rm -it \
	--shm-size="20G" \
    --name "$NAME""_dev$(echo $DEVICES | sed 's/,//')" \
    --gpus "\"device=$DEVICES\"" \
    --hostname $HOSTNAME \
    -v $HOME/.jupyter:$HOME/.jupyter \
    -v $HOME/repositories:/repositories \
    -v /etc/localtime:/etc/localtime:ro \
    -u $USER \
    -p "$PORT:$PORT" \
    $NAME \
    jupyter lab --port="$PORT" --ip=0.0.0.0 --allow-root --no-browser --NotebookApp.token='change_me' .
