#!/bin/bash


echo "Atualizando Sistema..."

apt-get update
apt-get upgrade -y


echo "Instalando Servidor WEB..."

apt-get install apache2 apache2-utils -y
apt-get install unzip -y


echo "Baixando e copiando arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "Processo Finalizado!"
