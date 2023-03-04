#!/bin/bash

mkdir /var/lib/docker/volumes/app
mkdir /var/lib/docker/volumes/app/_data/

cd /var/lib/docker/volumes/app/_data
wget https://raw.githubusercontent.com/denilsonbonatti/toshiro-shibakita/main/index.php -q
echo "


"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "!!!!!!!Coloque seu IP no .php!!!!!!!"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "Local:                              "
echo "/var/lib/docker/volumes/app/_data/index.php"
echo "




"

echo "------------------------------"
echo "     Iniciando Web Server     "
echo "------------------------------"
echo "


"
docker run --name web-server -dt -p 80:80 --mount type=volume,src=app,dst=/app/ webdevops/php-apache:alpine-php7