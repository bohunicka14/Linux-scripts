#!/bin/bash

read -p "Zadaj heslo: " password

if [[ ${#password} -ge 6 && ${#password} -le 10 ]]
then
echo "OK"
else
echo "NOK"
fi
