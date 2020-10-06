FROM jenkins/jenkins:lts
# Install all necesarry apt packages
USER root
RUN apt-get update && apt-get install -y \
    python3-dev\
    python3-pip\
    python3-setuptools\
    python3-tk\
    tk-dev\
    curl\
    wget\
    git\
    virtualenv\
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Python 3.6-3.8
RUN apt-get update && apt-get install -y \
    build-essential zlib1g-dev libssl-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev\
    libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev libffi-dev uuid-dev\
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# 3.6
WORKDIR /python_installs
RUN wget https://www.python.org/ftp/python/3.6.12/Python-3.6.12.tar.xz
RUN tar -xf Python-3.6.12.tar.xz
WORKDIR Python-3.6.12
RUN ./configure --enable-optimizations
RUN make -j $(nproc)
RUN make altinstall
RUN python3.6 --version

# 3.7
WORKDIR /python_installs
RUN wget https://www.python.org/ftp/python/3.7.9/Python-3.7.9.tar.xz
RUN tar -xf Python-3.7.9.tar.xz
WORKDIR Python-3.7.9
RUN ./configure --enable-optimizations
RUN make -j $(nproc)
RUN make altinstall
RUN python3.7 --version

# 3.8
WORKDIR /python_installs
RUN wget https://www.python.org/ftp/python/3.8.6/Python-3.8.6rc1.tar.xz
RUN tar -xf Python-3.8.6rc1.tar.xz
WORKDIR Python-3.8.6rc1
RUN ./configure --enable-optimizations
RUN make -j $(nproc)
RUN make altinstall
RUN python3.8 --version

# 3.9
WORKDIR /python_installs
RUN wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0rc2.tar.xz
RUN tar -xf Python-3.9.0rc2.tar.xz
WORKDIR Python-3.9.0rc2
RUN ./configure --enable-optimizations
RUN make -j $(nproc)
RUN make altinstall
RUN python3.9 --version

# Cleanup
WORKDIR /
RUN rm -rf /python_installs

# Install Arduino-cli
RUN curl -fsSL --retry 5 --retry-delay 5 https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | BINDIR=/usr/bin sh

# drop back to the regular jenkins user - good practice
USER jenkins
