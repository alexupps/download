#!/bin/bash
version=0.7
# Created by alexupps to make easy install reaver-wps from t6x fork team.
# Any problem of this contact with me alexupps@gmail.com.

#Funciones
clear
echo -e "                     (C) 2017 alexupps @ alexupps.ml
                         ██████╗  █████╗ ██╗
                         ██╔══██╗██╔══██╗██║
                         ██████╔╝███████║██║
                         ██╔══██╗██╔══██║██║
                         ██║  ██║██║  ██║██║
                         ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝ v0.7
                        Reaver Automatic Installer.
"
echo
echo -e "Comprobando conexion a internet..."
echo
wget -q --tries=10 --timeout=20 --spider http://google.com
if [[ $? -eq 0 ]]; then
	sleep 3
	clear
echo -e "                     (C) 2017 alexupps @ alexupps.ml
                         ██████╗  █████╗ ██╗
                         ██╔══██╗██╔══██╗██║
                         ██████╔╝███████║██║
                         ██╔══██╗██╔══██║██║
                         ██║  ██║██║  ██║██║
                         ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝ v0.7
                        Reaver Automatic Installer.
"
	echo
        echo -e "Conectado!"
	echo
	echo -e "Preparando..."
	echo
	sleep 3
	cd Desktop
	echo -e "Preparando instalacion de dependencias de Reaver..."
	echo
	sudo apt-get install libpcap-dev aircrack-ng git build-essential
	clear
	echo -e "                     (C) 2017 alexupps @ alexupps.ml
                         ██████╗  █████╗ ██╗
                         ██╔══██╗██╔══██╗██║
                         ██████╔╝███████║██║
                         ██╔══██╗██╔══██║██║
                         ██║  ██║██║  ██║██║
                         ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝ v0.7
                        Reaver Automatic Installer.
"
	echo
	echo -e "Descargando ultima version de Reaver..."
	echo
	git clone https://github.com/t6x/reaver-wps-fork-t6x.git
	sleep 3
	clear
echo -e "                     (C) 2017 alexupps @ alexupps.ml
                         ██████╗  █████╗ ██╗
                         ██╔══██╗██╔══██╗██║
                         ██████╔╝███████║██║
                         ██╔══██╗██╔══██║██║
                         ██║  ██║██║  ██║██║
                         ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝ v0.7
                        Reaver Automatic Installer.
"
	echo
	echo -e "Descarga finalizada, preparando instalacion de reaver..."
	echo
	sleep 3
	cd reaver-wps-fork-t6x
	cd src
	./configure && make
	clear
echo -e "                     (C) 2017 alexupps @ alexupps.ml
                         ██████╗  █████╗ ██╗
                         ██╔══██╗██╔══██╗██║
                         ██████╔╝███████║██║
                         ██╔══██╗██╔══██║██║
                         ██║  ██║██║  ██║██║
                         ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝ v0.7
                        Reaver Automatic Installer.
"
	echo
	echo -e "Instalando Reaver..."
	echo
	sudo make install
	clear
echo -e "                     (C) 2017 alexupps @ alexupps.ml
                         ██████╗  █████╗ ██╗
                         ██╔══██╗██╔══██╗██║
                         ██████╔╝███████║██║
                         ██╔══██╗██╔══██║██║
                         ██║  ██║██║  ██║██║
                         ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝ v0.7
                        Reaver Automatic Installer.
"
	echo
	echo -e "Instalacion Completada!"
	echo
	echo -e "Gracias por utilizar 'rai.sh'"
	echo
	echo -e "Any problem contact to alexupps@gmail.com"
	sleep 5
	clear
	exit 
else
	sleep 3
        echo "Sin Conexion, resuelva el problema y ejecute de nuevo el script."
fi
