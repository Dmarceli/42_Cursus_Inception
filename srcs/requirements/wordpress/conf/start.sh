echo "=====WordPress Container Started======="

chmod -R 775 /var/www/
chown -R www-data:www-data /var/www/
mkdir -p /run/php
touch /run/php/php7.3-fpm.pid

php-fpm7.3 -F -R
