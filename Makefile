include .env

################ Docker commands ################

bash:
	docker exec -it ${CONTAINER_NAME} zsh || winpty docker exec -it ${CONTAINER_NAME} zsh

build:
	docker-compose build --no-cache && npm ci || npm install

up:
	docker-compose up -d && make bash

down:
	docker-compose down
