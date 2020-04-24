#!/bin/bash

docker run -it --gpus '"device=0"'  --rm -p "8888:8888" -v /home/josh/repositories/:/repositories pytorch1.4_cuda10.1_rmp \
    jupyter notebook --port=8888 --ip=0.0.0.0 --allow-root --no-browser .
