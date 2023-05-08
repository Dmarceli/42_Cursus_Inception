#!/bin/bash

/etc/init.d/mysql start
sleep 2

sed -i "s/SQL_USER/$db_user/g" makedb.sql
sed -i "s/SQL_PWD/$db_pwd/g" makedb.sql
sed -i "s/DB_NAME/$db_name/g" makedb.sql

mysql < makedb.sql
sleep 2

mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$db_rootpwd';"
sleep 2

mysqladmin -u root -p$db_rootpwd shutdown
sleep 2

mysqld_safe
