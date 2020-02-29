#!/bin/bash

docker run -it --gpus '"device=1"'  --rm -p "8888:8888" -v /home/josh/repositories/:/repositories pytorch1.4_cuda10.1_jupyter
