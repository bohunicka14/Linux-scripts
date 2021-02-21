#!/bin/bash

znamienka=("*" "+" "-" "/")
random_znamienko_index=$RANDOM%4

if [[ ${znamienka[$random_znamienko_index]} == / ]]
  then 
        prave=$(($(($RANDOM%10))+1))
	lave=$(($(($RANDOM%10))*$prave))
  else
	lave=$(($RANDOM%10))
	prave=$(($RANDOM%10))
fi

((vysledok=$lave"${znamienka[$random_znamienko_index]}"$prave))

read -p "Zadaj vysledok pre ${lave} ${znamienka[$random_znamienko_index]} ${prave} = " uzivatel_vysledok

if [[ $vysledok == $uzivatel_vysledok ]]
then echo "Spravny vysledok!"
else 
((rozdiel=$vysledok-$uzivatel_vysledok))
echo "Nespravny vysledok, pomylil si sa o ${rozdiel}."
fi
