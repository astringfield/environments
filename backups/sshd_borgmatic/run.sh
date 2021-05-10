#!/bin/bash

docker run -d \
    --name "backup" \
    -v /host/path:/mnt/data \
    -v /root/.ssh/authorized_keys:/root/.ssh/authorized_keys:ro \
    -v /etc/localtime:/etc/localtime:ro \
    -p 2222:22 \
    thorpejosh/my_sshd_borg
