#!/bin/bash

echo "Atualizando o servidor"

sudo apt-get update
sudo apt-get upgrade -y

echo "Instalar o apache e unzip"

sudo apt-get install apache2 -y
sudo apt-get install unzip -y

echo "Baixar o projeto do site no diretorio /tmp  descompactar e copia no diretorio do apache2"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html
echo "Finalizando o script" 
