#!/bin/bash

heslo=$1
#prva=$1
druha=$2
tretia=$3
echo $prva
echo $druha

#if [ $prva \> $druha ]  #ak chcem porovnavat tak musim vyescapovat zobak
#if [ $prva -$tretia  $druha ]
#if [[ $prva = *"$druha"* ]]

#if [ $prva -eq 1 -o $druha -eq 1 ]  # -o = OR   mozem pouzit aj || ale musim pouzit zdvojene zatvorky
#if [ $prva -eq 1 -a $druha -eq 1 ]  # -a = AND   mozem pouzit aj && ale musim pouzit zdvojene zatvorky

#if [ -z $prva ]  # testujem ci je hodnota nulova
#if [ -n $prva ]  # testujem ci je hodnota nenulova # da sa to zapisat aj len ako if [ $prva ]
#if [ -e $prva ]  # testujem ci existuje subor, -d pre directory, -s testujem ci je subor prazdny
#if [ -x $prva ]  # testuje ci ma subor prava x
#if [ -O $prva ]  # testuje ci som owner suboru

#cislo=$(echo $1 | grep -E '^[0-9]+$')
#if [ -z $cislo ]
#if [[ $1 = *[!0-9]* ]]
echo ${#heslo} #vrati dlzku
if [ ${#heslo} -ge 5 ]
then 
#echo Je tam pismeno
echo Dlhsie nez 5
else
#echo Je to cislo $cislo
#echo Je to cislo $1
echo Kratsie alebo rovne ako 5
fi
