#!/bin/bash
NAME="my_jenkins"

docker run --name jenkins --rm --detach \
        -v jenkins_home:/var/jenkins_home \
        -p 8080:8080 -p 50000:50000 $NAME
