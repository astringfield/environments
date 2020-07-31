#!/bin/bash

#name for container
NAME="pytorch1.6_cuda10.2"

if [ -n "$(docker ps -aqf "name=$NAME")" ]
then
    echo container running exists, restarting it now
    docker rm $NAME
else
    echo container does not exist, starting container now
fi

docker run -it --shm-size="20G" --name $NAME --gpus all -v $HOME/repositories:/repositories -u josh $NAME bash
