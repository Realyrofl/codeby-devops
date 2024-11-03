#!/bin/bash

mkdir -p /home/vagrant/.ssh
chmod 700 /home/vagrant/.ssh

touch /home/vagrant/.ssh/authorized_keys
chmod 600 /home/vagrant/.ssh/authorized_keys

chown -R vagrant:vagrant /home/vagrant/.ssh
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart ssh