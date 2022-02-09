#!/bin/bash
set -e

echo "Creando imagen personalizada para prueba de docker"

#Borrado de carpeta de files
rm -R files || true
mkdir files
cd files

echo "Clonando pagina web"
git init
git config user.email "jarm9229@gmail.com"
git config user.name "jarm9229"
git pull https://jarm9229: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@github.com/jarm9229/dockerprueba.git

cd ..

docker build . -t docker-prueba:1.0.0
exec "$@"
