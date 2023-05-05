/etc/init.d/mysql start 

sleep 2
mysql  < makedb.sql 

sleep 2
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyN3wP4ssw0rd';"

sleep 2

mysqladmin -u root -pMyN3wP4ssw0rd shutdown

sleep 2

mysqld_safe

