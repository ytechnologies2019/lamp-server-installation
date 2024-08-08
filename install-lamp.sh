#!/bin/bash
sudo yum update -y
sudo dnf install -y httpd wget php-fpm php-mysqli php-json php php-devel
sudo dnf install mariadb105-server -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www
sudo chmod 2775 /var/www && find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;

echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php
sudo dnf list installed httpd mariadb-server php-mysqlnd
rm /var/www/html/phpinfo.php
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo mysql_secure_installation
