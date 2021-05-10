#!/bin/bash
set -e
# Name for docker image
NAME="thorpejosh/my_sshd_borg"


docker build -t $NAME .
