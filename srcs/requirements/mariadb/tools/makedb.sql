CREATE DATABASE IF NOT EXISTS marydb;

--select User , Host from mysql.user ;

CREATE USER IF NOT EXISTS 'teste'@'%' IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON *.* TO 'teste'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

