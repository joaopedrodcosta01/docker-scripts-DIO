#!/bin/bash

ip="111.111.111.111.111"

echo "|----------------------------------------------------------------------|"
echo "|Instalacao do NFS para Clusters Clientes (Onde armazena os arquivos)  |"
echo "|----------------------------------------------------------------------|"
echo "


"

apt-get install nfs-common -y

echo "


-----------------------
Instalação Concluida :)
-----------------------
"
echo "
Etapa 2: Montagem do diretório do servidor:

"
 mount -o v3 $ip:/var/lib/docker/volumes/app/_data/ /var/lib/docker/volumes/app/_data/
