FROM debian:buster

RUN			apt-get update && apt-get install -y \
			apt-utils \
			mariadb-server

COPY ./tools/config.sh /usr/local/bin/

EXPOSE 3306

ENTRYPOINT [ "config.sh" ]

CMD ["mysqld", "--bind-address=0.0.0.0"]