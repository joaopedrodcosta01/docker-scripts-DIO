#!/bin/bash

echo "|------------------------------------------|"
echo "|Fazendo configurações necessárias.........|"
echo "|------------------------------------------|"
echo " "
echo " "
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

echo " "
echo " "

sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo " "
echo " "

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

echo " "
echo " "
echo "|----------------------------------------|"
echo "|Instalando aplicações do Docker.........|"
echo "|----------------------------------------|"
echo " "
echo " "

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

echo " "
echo " "
echo "|----------------------------------------|"
echo "|Testando Docker........                 |"
echo "|----------------------------------------|"
echo " "
echo " "

docker run hello-world