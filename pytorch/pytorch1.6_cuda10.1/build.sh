#!/bin/bash
set -e
#name for docker image
NAME="pytorch1.6_cuda10.1"
docker build -t $NAME .