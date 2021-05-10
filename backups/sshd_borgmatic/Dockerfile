FROM ubuntu:20.04
MAINTAINER "JoshThorpe"
RUN apt-get update \
 && apt-get install -yq\
    sudo \
    openssh-server \
    rsync \
    borgbackup \
    borgmatic \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

 RUN mkdir /var/run/sshd
 RUN mkdir /root/.ssh

 # Enable root login and disable password authentication
 RUN sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
 RUN sed -ri 's/^#?PasswordAuthentication\s+.*/PasswordAuthentication no/' /etc/ssh/sshd_config

 EXPOSE 22

 CMD ["/usr/sbin/sshd", "-D"]
