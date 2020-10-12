#!/bin/bash

while [ $SELECTION -eq 1 ]; do
cat <&2 << MENU


  entrer un nombre pour commencer
   1 ) creer un fichier 
   2 ) supprimer un fichier
   3 ) quitter
MENU
    echo "entrer votre choix"
    read SELECTION
    SELECTION=${SELECTION,,}
    case $SELECTION in 
	    1 ) echo "quel est le nom du fichier"
 un nombre pour commencer
    1 ) creer un fichier 
    2 ) supprimer un fichier





          3 ) quitter
	  MENU
	      echo "entrer votre choix"
	      read SELECTION
	      SELECTION=${SELECTION,,}
	      case $SELECTION in 
		      1 ) echo "quel est le nom du fichier"

