#!/bin/bash

echo " Criando WebServer via Apache 2"

echo " Atualizando Sistema..."

sudo apt update && sudo apt dist-upgrade -y

echo  "Instalando unzip.........."
apt-get install unzip -y

echo  "Instalando WebServer Apache2........"
apt-get install apache2 -y

echo "Verificando status Apache2"
systemctl status apache2

echo "Download dos Arquivos do Site......."

wget c -P /tmp https://github.com/Jennyhz7/Projetc-DIO-AWS-II/raw/main/Projeto-II_WebServer.zip

echo "Descompactando o Arquivo..."

unzip -q /tmp/Projeto-II_WebServer.zip -d /var/www/html/

