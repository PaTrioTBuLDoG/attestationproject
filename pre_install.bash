#!/bin/bash
set -x
sudo apt-get update -y
sudo apt-get install -y ansible git
sudo ansible-galaxy collection install community.docker
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
git config --global user.name "Aleksandr Paturay"
git config --global user.email "mts5022250@gmail.com"
echo 'git clone git@github.com:PaTrioTBuLDoG/attestationproject.git'
