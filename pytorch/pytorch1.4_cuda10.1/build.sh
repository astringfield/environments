#!/bin/bash
set -e
#name for docker image
NAME="pytorch1.4_cuda10.1"
docker build --build-arg HOST_UID="$UID" -t $NAME .
