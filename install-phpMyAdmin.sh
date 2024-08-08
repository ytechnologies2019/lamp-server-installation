#!/bin/bash
sudo echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php
sudo dnf list installed httpd mariadb-server php-mysqlnd
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo dnf install php-mbstring php-xml -y
sudo systemctl restart httpd
sudo systemctl restart php-fpm
cd /var/www/html
wget https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz
mkdir phpMyAdmin && tar -xvzf phpMyAdmin-latest-all-languages.tar.gz -C phpMyAdmin --strip-components 1
rm phpMyAdmin-latest-all-languages.tar.gz
sudo systemctl start mariadb
