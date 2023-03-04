#!/bin/bash

echo "Iniciando Cotainer Docker, Aguarde um Momento........."
docker run -d --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=Senha123 -e MYSQL_DATABASE=meubanco mysql:5 -q
echo "Fim da configuração do container :)"