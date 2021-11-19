build:
	docker build --tag im_nginx .

run:
	docker run --name nginx -p 80:80 -p 443:443 im_nginx &
	sleep 0.2

start: build run enter

restart: stop clean build run enter

stop:
	docker stop nginx

enter:
	docker exec -ti nginx bash

ps:
	docker ps
psa:
	docker ps -a
im:
	docker images
clean:
	docker rm nginx
	docker rmi im_nginx
