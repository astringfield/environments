#!/bin/bash

docker run -it --name docker_client --device=/dev/net/tun --privileged image_name
