#!/bin/bash

#while read line
#do
#echo vypis z riadku: $line
#done < $1  #citanie zo vstupu od pouzivatela


while IFS=" " read -r s1 s2 s3  #IFS = internal field separator #-r zobrazi tak ako to precita, cize \n vypise ako \n a nie n
do
if [ ! -z $s3 ]
then
echo -e Meno je: $s3 #-e berie do uvahy specialne znaky \n - zalomi riadok
printf "Toto je meno %s a toto je nieco ine %s\n" "$s3" "$s1"  #aj takto sa da robit vypis
fi 
done < $1
