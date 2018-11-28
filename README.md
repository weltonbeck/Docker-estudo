# Docker-estudo

estudo de docker

`docker ps` lista todos os containers ativos

`docker ps -a` lista todos os containers

`docker run -it YOUR_CONTAINER_ID` entro no shell do container

`docker rm YOUR_CONTAINER_ID` remove um container

`docker container prune` remove todos os containers inativos

### Images

`docker images` lista as imagens

`docker rmi YOUR_IMAGE_NAME` remove uma imagem

### Compose

`docker-compose build` faz o build

`docker-compose up -d` levanta o servidor sem travar o terminal

`docker-compose ps` lista os seviços rodando

`docker-compose down` desliga e remove os containers

`docker-compose run YOUR_CODE` executa um codigo dentro de um container
