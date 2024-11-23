#!/bin/sh

# install global

sudo apt update && \
sudo apt upgrade && \
sudo apt install curl && \

# install docker

curl -L "https://github.com/docker/compose/releases/download/v2.18.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose && \
sudo chmod 666 /var/run/docker.sock && \

# création d'image et instancation du container

docker docker-compose up --build -d