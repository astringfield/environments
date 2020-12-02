#!/bin/bash
set -e
#name for docker image
NAME="pytorch1.7_cuda11.0"
docker build --build-args HOST_UID=$UID -t $NAME .
