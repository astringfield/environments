#!/bin/bash
set -e

NAME="thorpejosh/my_jenkins"
docker build -t $NAME .
