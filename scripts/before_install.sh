#!/usr/bin/env bash

# installing the docker-ce
if ! dpkg -l | grep -qw docker-ce > /dev/null; then
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
  apt-get update
  apt-cache policy docker-ce
  apt-get install -y docker-ce
  systemctl status docker
fi

# installing the docker-compose
if [ ! -f "/usr/local/bin/docker-compose" ]; then
  curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.15.0/docker-compose-$(uname -s)-$(uname -m)"
  chmod +x /usr/local/bin/docker-compose
fi