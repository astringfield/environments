FROM ubuntu
MAINTAINER "JT"
RUN ["apt", "update"]
RUN [ "apt" ,"install", "-y", "python3-dev", "python3-pip", "htop", "virtualenv", "git"]
RUN ["pip3", "install", "numpy", "PILLOW", "opencv-python"]
ENTRYPOINT bash
