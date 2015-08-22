#!/bin/bash

echo "Configurando la Máquina virtual..."
echo "Actualizando distribución"
sudo apt-get update 2> /dev/null
echo "Instalando y configurando Apache"
sudo apt-get install -y apache2 2> /dev/null
sudo apt-get install -y openssl 2> /dev/null
echo "Apache Instalado"
echo "Actualizando repositorio PHP"
sudo apt-get install python-software-properties build-essential -y > /dev/null
sudo add-apt-repository ppa:ondrej/php5 -y > /dev/null
sudo apt-get update > /dev/null
echo "Instalando PHP"
sudo apt-get install php5-common php5-dev php5-cli php5-fpm -y > /dev/null
echo "Instalando extensiones de PHP"
sudo apt-get install curl php5-curl php5-gd php5-mcrypt php5-mysql -y > /dev/null
echo "reiniciando Apache"
sudo service apache2 restart
echo "Instalando MySQL"
sudo apt-get install debconf-utils -y > /dev/null
debconf-set-selections <<< "mysql-server mysql-server/root_password password 0000"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password 0000"
sudo apt-get install mysql-server -y > /dev/null
sudo apt-get install mysql-client -y > /dev/null
echo "Instalando Git"
sudo apt-get install -y git 2> /dev/null
echo "instalando Node.js"
sudo apt-get update
sudo apt-get install nodejs-legacy -y
sudo apt-get install npm -y
echo "///////////////////////////////////////////"
echo "/                                         /"
echo "/       SU SERVIDOR ESTA LISTO            /"
echo "/       IP: 192.168.33.10                 /"
echo "/       Carpeta: /html                    /"
echo "/                                         /"
echo "///////////////////////////////////////////"
