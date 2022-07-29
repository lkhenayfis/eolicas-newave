#! /bin/bash

CURDIR=$(pwd)

cd eolicas-newave-dados
source ./install.sh

cd ../eolicas-newave-deck
source ./install.sh

cd ..

# Copies the executable to a folder in the system's PATH
EXECPATH=/usr/bin/eolicas-newave
echo "Copiando executável para ${EXECPATH}"
cp eolicas-newave $EXECPATH

# Deactivates venv
echo "Finalizando instalação..."
cd $CURDIR