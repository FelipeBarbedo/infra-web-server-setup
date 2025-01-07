#!/bin/bash

apt update
apt install apache2 -y

systemctl start apache2
systemctl enable apache2

rm /var/www/html/index.html

cp index.html /var/www/html/

systemctl reload apache2
