#!/bin/bash
set -e
# Name for docker image set to the parent dir of this script
PARENT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
NAME="$( echo $PARENT_DIR | sed 's:.*/::' )"

# Get timezone of host machine and pass to builder
TZ=$(cat /etc/timezone)

# Build docker image using the host USER, UID and TZ.
cd $PARENT_DIR && docker build --build-arg HOST_USER=$USER --build-arg HOST_UID=$UID --build-arg TZ=$TZ -t $NAME --secret id=pipconf,src=.pip.conf .
