#!/bin/bash


echo "quel est le fichier que vous recherchez ?"
read fichier

fichier=0
if [ "$(stat -c %a ${fichier})" -lt "666" ]  
then
chmod a+rw "${fichier}"
fi

exit
