#!/bin/bash

read -sp "Zadaj heslo: " heslo

until [[ $heslo =~ [0-9] && $heslo =~ [a-z] && $heslo =~ [A-Z] && ${#heslo} -gt 5 ]]
do
read -sp "chyba validacie, zadaj heslo znova: " heslo
done

echo \n validne heslo
