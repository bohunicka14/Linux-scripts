#!/bin/bash

while [ 1 -eq 1 ]
do 
toto=$((RANDOM%999+100)) #mozem aj takto zapisat $((100+RANDOM%900))
echo $toto
if [ $toto -eq 999 ]
then exit
fi
done
