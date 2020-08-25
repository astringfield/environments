#!/bin/bash
set -e
#name for docker image
NAME="pytorch1.6_cuda10.2_jupyterlab"
docker build -t $NAME .
