#!/bin/bash


function dir()
{

case $# in
0) repertoire=`pwd`;;
*) repertoire=$*;;
esac

for f in $repertoire 
do

if [ -d $f ]
then
	if [ -r $f -a -x $f ] 
	then
		ls -la $f
	else
		echo "le repertoire $f est inaccessible" 1>&2;
	fi
        else 
		r=`ls -l $f 2>/dev/null`
		if [ "$r" ]
		then 
			echo $r
		else
			echo "l'element $f est inaccessible" 1>&2;
		fi
	fi
        done

}

function rename ()
{
case $# in
2) if mv $1 $2 2>/dev/null
   then :
   else 
	   echo ERREUR : $1 inaccessible 1>&2;
	   exit 1;
   fi;;
*) echo "ERREUR: usage: rename fichier1 fichier2" 1>&2;
   exit 1;;
esac
}



