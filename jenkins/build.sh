#!/bin/bash
set -e

NAME="jenkins_build"
docker build -t $NAME .
