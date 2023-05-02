#!/bin/bash

mkdir /var/www/
mkdir /var/www/html

cd /var/www/html

wget https://wordpress.org/latest.tar.gz

tar -xzvf latest.tar.gz

rm latest.tar.gz

cd wordpress/

cp /wp-config.php .

sed -i -r "s/db1/$db_name/1"   wp-config.php
sed -i -r "s/user/$db_user/1"  wp-config.php
sed -i -r "s/pwd/$db_pwd/1"    wp-config.php

chmod -R 775 /var/www/
chown -R www-data:www-data /var/www/
mkdir /run/php

touch /run/php/php7.3-fpm.pid
rm /etc/php/7.3/fpm/pool.d/www.conf
cp /www.conf /etc/php/7.3/fpm/pool.d

php-fpm7.3 -F