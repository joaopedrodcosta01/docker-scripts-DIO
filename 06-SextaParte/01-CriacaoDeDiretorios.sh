#!/bin/bash
#Criando o proxy

echo "----------------------------"
echo " Script de Criação do Proxy "
echo "----------------------------"
echo "

"

cd /
mkdir /proxy
cd /proxy

echo "
http { 
	upstream all {
		server 192.168.0.108:80;
		server 192.168.0.110:80;
	}
	server {
		listen 4500;
		location / {
			proxy_pass http://all/;
		}
	}

events{ }
" > nginx.conf

echo "
FROM nginx
	COPY nginx.conf /etc/nginx/nginx.conf
" > dockerfile 

echo "--------------------------------------"
echo "  Lembre de Mudar os IP's no arquivo  "
echo "!   MANTENHA AS PORTA 80 em cada IP  !"
echo " 		/proxy/nginx.conf           "
echo "    Logo depois você roda o script    "
echo "               BUILD                  "
echo "--------------------------------------"
echo "

-----------------------------------------------
|   pasta proxy implementada com sucesso :)   |
"