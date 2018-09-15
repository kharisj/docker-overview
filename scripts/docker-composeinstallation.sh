#!/bin/sh
docker-compose --version
if [ $? == 0 ]; then
    echo "Docker-Compose already installed"
else
    echo "installing docker-compose"
    curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/bin/docker-compose
    chmod +x /usr/bin/docker-compose
    echo "Docker-Compose Installed Successful"
fi