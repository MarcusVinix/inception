FROM debian:buster

RUN apt-get update && \
	apt-get install -y \
	php-fpm php-common php-mbstring php-xmlrpc \
	php-soap php-gd php-xml php-intl php-mysql \
	php-cli php-ldap php-zip php-curl \
	wget

RUN mkdir /run/php && \
	cd /tmp && wget https://wordpress.org/latest.tar.gz && \
	tar -zxvf /tmp/latest.tar.gz && \
	mkdir -p /var/www/html && \
	mv wordpress /var/www/html/wordpress && \
	chown -R www-data:www-data /var/www/html/wordpress/ && \
	chmod -R 755 /var/www/html/wordpress/ && \
	mv /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php

COPY ./tools/config.sh /usr/local/bin

EXPOSE 9000

ENTRYPOINT [ "config.sh" ]

CMD [ "/usr/sbin/php-fpm7.3", "--nodaemonize" ]