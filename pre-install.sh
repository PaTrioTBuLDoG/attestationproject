#!/bin/bash
set -x
sudo apt-get update -y
sudo apt-get install -y ansible git
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
git config --global user.name "Zaripov Ildar"
git config --global user.email "ildarbinanas@gmail.com"
echo 'git clone git@gitlab.com:ildarbinanas/devops_install_docker.git'
