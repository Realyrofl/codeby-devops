#!/bin/bash

mkdir -p /home/vagrant/.ssh
chmod 700 /home/vagrant/.ssh

touch /home/vagrant/.ssh/authorized_keys
chmod 600 /home/vagrant/.ssh/authorized_keys

chown -R vagrant:vagrant /home/vagrant/.ssh

sudo cp /vagrant/personal_key.pub ~/.ssh/authorized_keys