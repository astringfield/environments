FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y \
    python3-dev\
    python3-pip\
    python3-setuptools\
    curl\
    wget\
    git\
    virtualenv\
    && apt-get clean && rm -rf /var/lib/apt/lists/*
# drop back to the regular jenkins user - good practice
USER jenkins

