#!/bin/bash

SELECTION=1
while [ $SELECTION -eq 1 ]; do
cat >&2 << MENU 

  entrer un nom pour commencer

     1 ) creer un utilisateur
     2 ) supprimer un utilisateur
     3 ) quitter

MENU
   echo "entrer votre choix"
   read -r SELECTION
   SELECTION=${SELECTION,,}
   case $SELECTION in
	   1 ) echo "entrer le nom de l'utilisateur à ajouter"
		   read -r uname 
		   [ -n $uname, ]  &&  useradd $uname 
		   unset uname
		   ;;
	   2 ) echo "entrer le nom de l'utilisateur à supprimer"
		   read uname 
		   [ -n $uname ] && userdel $uname
		   unset uname
		   ;;
	   3 ) exit 0
		   ;;
	   * ) echo "veuillez faire un choix valide"
		   ;;
       esac
    done 

