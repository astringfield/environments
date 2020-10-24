#!/bin/bash

NAME="pytorch1.4_cuda10.1_jupyter"

docker run -it \
    --gpus '"device=0"' \
    --rm -p "8888:8888" \
    --shm-size="20G" \
    -v /home/josh/repositories/:/repositories \
    -v /etc/localtime:/etc/localtime:ro \
    -u josh \
    --name $NAME \
    $NAME \
    jupyter notebook --port=8888 --ip=0.0.0.0 --allow-root --no-browser .
