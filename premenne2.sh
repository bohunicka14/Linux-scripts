#!/bin/bash

meno=$1

echo meno je $meno
echo iny zapis je ${meno:-Nema meno}  #vypise Nema meno ak je meno prazdne
#echo iny zapis je ${meno:=Nema meno}  #zapise do premennej meno Nema meno
					# ak dam ${meno:+Nema meno} urobi opacne co minus - teda prepise premennu ak je premenna neprazdna
					# ak dam ${meno:?Nema meno} program sa ukonci s hlaskou nema meno
echo meno je $meno

echo iny zapis je ${meno:0:5}  #vypise prvych 5 znakov z premennej $meno (moze sa zapisat aj ako ::5 -bez nuly)
		  ${meno:3:5}  #vypise od tretieho znaku 5 znakov
		  ${meno::-5}  #zrusi poslednych 5 znakov
		  ${meno:3:-5} #vynecha prve tri a poslednych 5 znakov
		  ${meno:(-1)} #vypise posledny znak
		  ${meno::(-1)} #vynecha posledny znak
cesta=/var/log/auth.log
echo ${cesta#*/} #odstrani prve lomitko
echo ${cesta##*/} #odstrani vsetko po posledne lomitko vratane lomitka
echo ${cesta%/*}  #odstrani vsetko od konca po prve najdene lomitko vratane lomitka - cize ostane len cesta ku suboru
echo ${cesta%/*.*} #takisto odstrani nazov suboru vratane lomitka 
echo ${cesta%%log*} #vypise len /var/
echo ${cesta/#\/var/\/LOG} #var nahradi za LOG lebo je prvy od zaciatku
echo ${cesta/%log/LOG} #log nahradi za LOG lebo je prvy od konca
echo ${cesta/log/LOG}  #nahradi prvy vyskyt log za LOG
echo ${cesta//log/LOG} #nahradi vsetky vyskyty log za LOG

meno=$@  #posle vsetok vstup do premennej meno
meno=$#  #do premennej zapise pocet parametrov ktore sa posielaju do skriptu
meno=$$  #zapise pid procesu do premennej


echo 1
echo 2
echo $_
pwd
echo $_    #vypise posledny parameter a ak parameter bol prikaz tak vypise prikaz ale nevykona ho


meno=$1
echo Toto je dlzka premennej ${$meno}



pwd
echo $?

date
echo $?

blablabla
echo $?
exit



