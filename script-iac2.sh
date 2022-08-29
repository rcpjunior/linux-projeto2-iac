#!/bin/bash
echo "Atualizando o Servidor"
apt-get update
apt-get upgrade -y
echo "Instalando o Apache"
apt-get install apache2 -y
echo "Instalando o Unzip"
apt-get install unzip -y
echo "Baixando o código do Site"
cd /tmp 
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Descopactando o código"
unzip main.zip
echo "Publicando o site"
cd linux-site-dio-main
cp -R * /var/www/html/

