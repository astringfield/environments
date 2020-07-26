#!/bin/bash
set -e

NAME="my_jenkins"
docker build -t $NAME .
