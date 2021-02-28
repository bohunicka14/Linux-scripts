#!/bin/bash 

while read -r input
do
if [[ $input == "Áno" ]]
then
echo OK
exit
fi
done
