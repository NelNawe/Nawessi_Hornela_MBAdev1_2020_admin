#!/bin/bash

function pause() {
	echo "appuyer sur entrer"
	read

}

function saisirutilisateur {
	echo "saisir le nom de l'utilisateur"
	read -r utilisateur
}

function verifierutilisateur {
	if grep "^utilisateur:" /etc/passwd > /dev/null; then
		echo "l'utilisateur existe"
	else 
		echo "l'utilisateur n'existe pas"
	fi
	pause 



}



REPONSE=1
while [ $REPONSE -eq 1 ]; do
	clear
	printf "menu :\n\n"
	echo "1. verifier l'existence d'un utilisateur"
	echo "2. connaitre l' UID d'un utilisateur"
	echo -e "3.quitter\n"
	read -r choix
	case "$choix" in
	    1)
		    saisirutilisateur
		    verifierutilisateur;;



             2) 
		     saisirutilisateur
		     id $utilisateur
		     pause ;;
	     q)
		     echo " au revoir"
		     pause
		     REPONSE=0 ;;
             *)
		     echo "erreur de saisie"
		     pause ;;
     esac
done
