#!/bin/bash

cislo=$1
cyklus=1
vysledok=0
vysledok2=1
#if [ $cislo -gt 10 ]
#then exit
#fi

while [ $cyklus -le $cislo ]
do

if [ $cyklus -le 5 ]
then echo $cyklus je male cislo
else
echo $cyklus je velke cislo
fi
vysledok=$(($vysledok + $cyklus))
vysledok2=$(($vysledok2 * $cyklus))
cyklus=$(($cyklus + 1))  #alebo sa to zapise takto: ((cyklus ++))
done

echo Sucet je $vysledok
echo Faktorial je $vysledok2

