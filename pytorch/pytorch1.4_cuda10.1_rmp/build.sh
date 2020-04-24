#!/bin/bash
set -e
#name for docker image
NAME="pytorch1.4_cuda10.1_rmp"
echo $0
docker build -t $NAME .
