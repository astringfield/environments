#!/bin/bash
set -e
#name for docker image
NAME="pytorch1.5_cuda10.2_jupyter"
docker build -t $NAME .
