#! /bin/bash

source ./configure

cd eolicas-newave-dados
source ./uninstall.sh

cd ../eolicas-newave-deck
source ./uninstall.sh

cd ..

INSTALLDIR=${USERINSTALLDIR}/eolicas-newave
echo "Removendo arquivos da instalação em ${INSTALLDIR}" 
[ -d $INSTALLDIR ] && rm -r $INSTALLDIR

EXECPATH=/usr/bin/eolicas-newave
echo "Removendo executável em ${EXECPATH}" 
[ -f $EXECPATH ] && rm $EXECPATH
echo "Finalizando..."
