#!/bin/sh
sudo sed -e "s/PasswordAuthentication no/#PasswordAuthentication no/" \
-e "s/#PasswordAuthentication yes/PasswordAuthentication yes/" \
-i /etc/ssh/sshd_config
sudo service sshd reload
sudo groupadd docker
sudo usermod -aG docker vagrant
docker -v
if [ $? == 0 ]; then
    echo "Docker already installed"
else
    echo "installing docker"
    curl -SSl https://get.docker.com/|sh
    echo "Docker Installed Successful"
fi
sudo systemctl enable docker
sudo systemctl start docker