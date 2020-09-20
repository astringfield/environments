FROM jenkins/jenkins:lts
# Install all necesarry apt packages
USER root
RUN apt-get update && apt-get install -y \
    python3-dev\
    python3-pip\
    python3-setuptools\
    python3-tk\
    curl\
    wget\
    git\
    virtualenv\
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install Arduino-cli
RUN curl -fsSL --retry 5 --retry-delay 5 https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | BINDIR=/usr/bin sh

# drop back to the regular jenkins user - good practice
USER jenkins
