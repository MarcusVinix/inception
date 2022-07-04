#!/bin/sh

if [ ! -d "/var/lib/mysql/wordpress" ]
then
	service mysql start;
	mariadb -u root \
	--execute="CREATE DATABASE $DB_NAME; \
	CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'; \
	GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$MYSQL_USER'@'%'; \
	FLUSH PRIVILEGES;";
	mysqladmin -u root password $MYSQL_ROOT_PASSWORD

fi

exec "$@"