#!/bin/sh

if [ ! -f "$WP_CONFIG" ]
then
	sed -i "s/database_name_here/$DB_HOST/g" $WP_CONFIG
	sed -i "s/username_here/$MYSQL_USER/g" $WP_CONFIG
	sed -i "s/password_here/$MYSQL_PASSWORD/g" $WP_CONFIG
	sed -i "s/localhost/$DB_HOST/g" $WP_CONFIG
fi

exec "$@"