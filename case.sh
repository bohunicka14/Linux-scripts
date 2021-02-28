#!/bin/bash

datum=$(date +%a)
case $datum in
Mon)
echo "Zas pondelok.";;
Tue|Thu)
echo "Nechce sa mi.";;
Wed)
echo "Teraz sa to lame.";;
Fri|Sat|Sun)
echo "YES";;
esac

case $1 in 
1)
	echo "Jednotka";;
2)
	echo "Dvojka";;
*)
	echo "Nepoznam take cislo.";;
esac
