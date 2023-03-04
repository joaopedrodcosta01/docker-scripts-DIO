#!/bin/bash

replicas=10;

echo "Os nós que pertencem ao seu cluster:"
echo "----------------------------------------------------------"
docker node ls
echo "



"

echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "Começando serviço de Web Server para seu cluster"
echo "Se quiser configurar quantas replicas irá usar apenas mude a variável 'replicas' por padrão vira 10..."
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

docker service create --name web-server --replicas $replicas -dt -p 80:80 --mount type=volume,src=app,dst=/app/ webdevops/php-apache:alpine-php7
echo "



"
echo "------------------------------------------"
echo "Seu serviço foi organizado dessa maneira: "
echo "------------------------------------------"
echo "


"
docker service ps web-server

