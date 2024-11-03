#!/bin/bash

sudo sed -i '1i 192.168.56.10 dima.local' /etc/hosts
sudo sed -i '2i 192.168.56.10 www.dima.local' /etc/hosts
sudo cp /vagrant/dimadomain.crt /usr/local/share/ca-certificates/
sudo update-ca-certificates