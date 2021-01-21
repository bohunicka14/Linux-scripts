#!/bin/bash

heslo=$1

if [[ $heslo =~ [0-9] && $heslo =~ [a-z] && $heslo =~ [A-Z]  ]]
then
echo validne heslo
else
echo chyba validacie
fi
