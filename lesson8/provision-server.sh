#!/bin/bash

sudo apt update
sudo apt install apache2 openssl -y
sudo sed -i '1i 127.0.1.1 dima.local' /etc/hosts
sudo sed -i '2i 127.0.1.1 www.dima.local' /etc/hosts
sudo openssl req -newkey rsa:2048 -nodes -keyout dimadomain.key -x509 -days 365 -out dimadomain.crt -subj "/C=RU/ST=SPB/L=CityName/O=MyCompanyName/OU=MyCompany/CN=dima.local"
sudo cp dimadomain.key /etc/ssl/private/dimadomain.key
sudo cp dimadomain.crt /etc/ssl/private/dimadomain.crt
sudo cp dimadomain.crt /vagrant/dimadomain.crt
sudo mv /etc/apache2/sites-available/default-ssl.conf default-ssl.conf.bck
sudo cp /vagrant/default-ssl.conf /etc/apache2/sites-available/default-ssl.conf
sudo cp /vagrant/000-default.conf /etc/apache2/sites-available/000-default.conf
sudo a2ensite default-ssl.conf
sudo a2enmod ssl
sudo a2enmod headers
sudo systemctl restart apache2