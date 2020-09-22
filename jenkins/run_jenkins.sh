#!/bin/bash
NAME="my_jenkins"

if [ $(whoami) != "jenkins" ]
then
    echo "$0: This should only be run as the \"jenkins\" user." 1>&2
    exit 1
fi

docker run --name jenkins --rm --detach \
        -v jenkins_home:/var/jenkins_home \
        -p 8080:8080 -p 50000:50000 $NAME
