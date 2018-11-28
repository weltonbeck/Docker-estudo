## Docker CakePHP

`docker-compose up -d` Para inicializar o server

`docker-compose ps` para pegar o YOUR_CONTAINER_ID

`docker exec -it YOUR_CONTAINER_ID /bin/bash` Entra no shell `docker exec -it cakephp-fpm /bin/bash`

`composer create-project --prefer-dist cakephp/app /` cria o projeto cakephp

`docker-compose down` Para encerrar o server

http://localhost:8080/