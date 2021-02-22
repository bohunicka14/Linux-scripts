#!/bin/bash

from=$1
to=$2

if [ $to -lt $from ]
then
echo Druhe cislo je mensie ako prve.
exit
fi

diff=$(($to - $from + 1))
i=1
if [ $diff -le 10 ]
then
   while [ $i -le $diff ]
	do
	result=$(($from + $i - 1))
	((i ++))
	echo $result
	done 
else
   while [ $i -le 5 ]
	do
	result=$(($from + $i - 1))
	((i ++))
	echo $result
	done
   i=1
   while [ $i -le 5 ]
	do
	result=$(($to - 5 + $i))
	((i ++))
	echo $result
	done
fi
