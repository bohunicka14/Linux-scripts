#!/bin/bash

read -p "Tvoje meno je: " meno

echo Vyber si pohlavie
select pohlavie in "Muz" "Zena" "Exit"

do 
if [ "$pohlavie" == Muz ]
then
#echo Si muz
break
elif [ "$pohlavie" == Zena ]
then
#echo si zena
break
elif [ "$pohlavie" == exit ]
#echo Fakt?
then
exit
else 
echo Vyber si znovu, zle si stlacil
fi
done

echo Pohlavie mas ako $pohlavie a tvoje meno je $meno


