#!/bin/bash
NAME="pytorch1.5_cuda10.2_jupyter"
docker run -it --gpus '"device=0"'  --rm -p "8888:8888" -p "0.0.0.0:6006:6006" -v /home/josh/repositories/:/repositories $NAME \
jupyter notebook --port=8888 --ip=0.0.0.0 --allow-root --no-browser .
#tensorboard --logdir=/repositories/NeuRoRA/tb_logs --bind_all
