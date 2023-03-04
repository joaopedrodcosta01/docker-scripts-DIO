#!/bin/bash

echo "-------------------"
echo "    BUILD PROXY    "
echo "-------------------"

cd /proxy
docker build -t proxy-app .
docker container run --name my-proxy-app -dti -p 4500:4500 proxy-app


echo "------------------"
echo "Finalizado :)     "
echo "------------------"