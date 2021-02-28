#!/bin/bash


meno=("jano jana" fero fera)
echo ${meno[2]}
echo ${meno[@]}  #ak chcem vypisat vsetko
echo ${#meno[0]} #dlzka slova na indexe 0
echo ${#meno[@]} #vypise pocet objektov v poli

meno2=(jana jano fero fera)
meno2+=($1)
meno2+=($@) #vsetok vstup
meno2+=("$@") #aby dvojslovny vstup bralo ako jedno a nie dve
echo ${#meno2[@]}

unset meno2[$1] #vymazanie

meno3="jano jana fero fera"
meno3+=" $1" #pripoji k stringu meno3 udaj zo vstupu

for toto in ${meno2[@]}  #prechadzanie arrayom cez loop
do
echo $toto
done

declare -A meno4 #deklaracia pola so stringovymi indexmi, -a deklaracia pola s int indexami
meno4[jano]="kuna"
meno4[peter]="pan"
meno4[$1]="$2"
echo ${meno4[@]} #vypise hodnoty v poli
echo ${!meno4[@]} #vypise kluce

