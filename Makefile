all:
	cd srcs && docker-compose up --build --remove-orphans

stop:
	cd srcs && docker-compose down

clean:
	docker rmi wordpress mariadb nginx -f
	docker image prune