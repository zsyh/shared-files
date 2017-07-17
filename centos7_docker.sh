#!/bin/sh
curl -sSL https://get.docker.com/ | sh
usermod -aG docker $USER
systemctl enable docker
# docker pull zsyh/spark:2.1.1
yum install -y git
cd /tmp
git clone https://github.com/zsyh/shared-files.git
cp shared-files/docker-compose-Linux-x86_64 /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
cp shared-files/weave /usr/local/bin/weave
chmod +x /usr/local/bin/weave
cd $HOME
git clone https://github.com/zsyh/docker-spark.git
