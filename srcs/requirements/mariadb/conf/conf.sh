/etc/init.d/mysql start 

sleep 2

mysql < makedb.sql 

sleep 2

/etc/init.d/mysql stop

sleep 2

mysqld_safe

