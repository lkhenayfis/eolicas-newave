#! /bin/bash

CURDIR=$(pwd)

source ./configure

cd eolicas-newave-dados
source ./install.sh

cd ../eolicas-newave-deck
source ./install.sh

cd ..

echo "Copiando executável para ${EXECPATH}"
EXECPATH=/usr/bin/eolicas-newave
cp eolicas-newave $EXECPATH
sed -i "s;fillinstalldir;${USERINSTALLDIR};" $EXECPATH

echo "Finalizando instalação..."
cd $CURDIR