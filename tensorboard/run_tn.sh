#!/bin/bash
set -e
# Script to run a tensorboard session independant of any other environments

LOGDIR=/home/josh/repositories/NeuRoRA/runs

if [ ! -d venv ]
then
    echo "Creating tensorboard virtual environment"
    virtualenv venv -p python3
    source venv/bin/activate
    pip install tensorboard
    deactivate
fi

source venv/bin/activate
tensorboard --logdir="$LOGDIR"
