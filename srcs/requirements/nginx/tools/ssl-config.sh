#!/bin/bash
if [ ! -f /etc/ssl/certs/nginx-certificate.crt ];
then
	openssl req -x509 -nodes -days 365 \
	-newkey rsa:4096 -sha256 \
	-keyout /etc/ssl/private/nginx.key \
	-out /etc/ssl/certs/nginx-certificate.crt \
	-subj "/C=BR/ST=Sao Paulo/L=Mairipora/O=42Sp/OU=mavinici/CN=mavinici.42.fr"
fi

exec "$@"