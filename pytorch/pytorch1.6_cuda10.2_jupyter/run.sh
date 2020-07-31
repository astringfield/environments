#!/bin/bash
NAME="pytorch1.6_cuda10.2_jupyter"
docker run -it --gpus '"device=0"'  --rm -p "8888:8888" -v /home/josh/repositories/:/repositories $NAME \
    jupyter notebook --port=8888 --ip=0.0.0.0 --allow-root --no-browser .
