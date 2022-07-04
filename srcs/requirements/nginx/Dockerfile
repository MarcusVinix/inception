FROM debian:buster

WORKDIR /

# install everything necessary
RUN apt-get update &&\
	apt-get install -y \
	nginx \
	openssl

# Copy configurations files
COPY ./conf/default /etc/nginx/sites-enabled/default
RUN openssl req -x509 -nodes -days 365 \
	-newkey rsa:4096 -sha256 \
	-keyout /etc/ssl/private/nginx.key \
	-out /etc/ssl/certs/nginx-certificate.crt \
	-subj "/C=BR/ST=Sao Paulo/L=Mairipora/O=42Sp/OU=mavinici/CN=mavinici.42.fr"

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
