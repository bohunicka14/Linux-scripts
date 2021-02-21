#!/bin/bash

/*
Vytvor script, ktorý bude zobrazovať náhodné príklady. Samozrejme, nech je tam nejaký vstup pre používateľa, aby zadal výsledok. Ak zadá dobrý výsledok, nech vypíše nejaké echo o tom aký je Borec, a ako ho ženy milujú. Ak vypočíta zle, tak tiež nejaké echo. Moc ho nezhadzuj, každému sa to občas stane, ale nech aspoň vidí aký mal byť správny výsledok, aký výsledok zadal on, a o koľko sa ten neštastník pomýlil.
*/

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
result="True"
else 
((rozdiel=$vysledok-$uzivatel_vysledok))
echo "Nespravny vysledok, pomylil si sa o ${rozdiel}."
result="False"
fi
