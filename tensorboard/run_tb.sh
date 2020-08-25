#!/bin/bash
set -e
# Script to run a tensorboard session independant of any other environments

LOGDIR=/home/josh/repositories/NeuRoRA/runs

REL_PATH_TO_THIS_SCRIPT=`dirname $0`
cd $REL_PATH_TO_THIS_SCRIPT

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
