Ambiente de desarrollo de Huitaca Digital
============

Este es el ambiente de desarrollo utilizado por Huitaca Digital

Ubuntu 14.04 LTS, Apache, PHP y MySQL

Requerimientos
------------
* VirtualBox <http://www.virtualbox.com>
* Vagrant <http://www.vagrantup.com>
* Git <http://git-scm.com/>

Uso
-----

### Instalación
	$ git clone http://www.github.com/HuitacaDigital/huitaca.dev.env
	$ cd huitaca.dev.env
	$ vagrant up

Listo! :-)

### Conectando

#### Apache
El servidor Apache esta disponible en: <http://localhost:8888>

#### MySQL
De manera externa el servidor MySQL está disponible en el puerto 8889, y cuando esta ejecutandose en la Máquina Virtual está disponible como socket en el puerto 3306.
Username: root
Password: root

Detalles técnicos
-----------------
* Ubuntu 14.04 64-bit
* Apache 2
* PHP 5.5
* MySQL 5.5

Acceso SSH
----------

	$ vagrant ssh

Agradecimiento.
---------------

mattandersen <http://www.github.com/mattandersen>
