#!/bin/bash

read -p "Ako sa volas?: " meno


meno=$(echo $meno | tr [:upper:] [:lower:])
if [ $meno = jano ]
then
echo OK
fi
