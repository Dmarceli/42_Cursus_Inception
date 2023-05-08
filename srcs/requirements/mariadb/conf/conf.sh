#!/bin/bash

/etc/init.d/mysql start
sleep 2

mysql < makedb.sql
sleep 2

mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$db_rootpwd';"
sleep 2

mysqladmin -u root -p$db_rootpwd shutdown
sleep 2

mysqld_safe
