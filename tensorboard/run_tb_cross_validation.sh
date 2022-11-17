#!/bin/bash
set -e
# Script to run a tensorboard session independant of any other environments

LOGDIR=/home/astringfield/tensorboard/pro_0172_cross_validation

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
tensorboard --logdir="$LOGDIR" --host="0.0.0.0" --port 8091
