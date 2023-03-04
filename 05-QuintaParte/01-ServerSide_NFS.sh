#!/bin/bash
#/var/lib/docker/volumes/app/_data

echo "|-----------------------------------------------------------------------------------|"
echo "|Instalacao do NFS (Configurado) para Cluster Pincipal (Onde armazena os arquivos)  |"
echo "|-----------------------------------------------------------------------------------|"
echo "


"
apt-get install nfs-server -y

echo "



"
cp /etc/exports /tmp
echo "/var/lib/docker/volumes/app/_data *(rw,sync,subtree_check)" >> /etc/exports

cd /var/lib/docker/volumes/app/_data/
exportfs -ar

echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "     		Atenção! Os arquivos da pasta 
	              /var/lib/docker/volumes/app/_data/     
                     Irão ser exposto totalmente na rede!            "
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "



"

echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "     Para os demais servidores usem o script para clientes     "
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "



"


