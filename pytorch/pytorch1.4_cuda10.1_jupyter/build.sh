#!/bin/bash
set -e
#name for docker image
NAME="pytorch1.4_cuda10.1_jupyter"
echo $0
docker build -t $NAME .
# Following line cannot be included in Dockerfile as the '--gpus all' flag is needed for these torch packages
docker run -it --gpus all --name tmp $NAME pip3 install torch-scatter torch-sparse torch-cluster torch-spline-conv torch-geometric 
docker commit tmp $NAME
docker rm tmp
