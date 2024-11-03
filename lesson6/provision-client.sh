#!/bin/bash

if [ ! -f /home/vagrant/.ssh/id_rsa ]; then
  ssh-keygen -t rsa -f /home/vagrant/.ssh/id_rsa -q -N ""
fi

sudo chown vagrant:vagrant /home/vagrant/.ssh/id_rsa*
sudo apt-get update
sudo apt-get install -y sshpass
sshpass -p "vagrant" ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub -o StrictHostKeyChecking=no vagrant@192.168.56.10