#!/bin/bash

heslo=$1
echo $heslo

if [ ${#heslo} -le 5 ]
then 
echo Kratke heslo
fi

if [[ $heslo =~ [0-9] && $heslo =~ [a-z] && $heslo =~ [A-Z] ]]
then 
echo Heslo je OK
else
echo Heslo nie je OK
fi

#==================================================================

heslo=$(pwgen 12 1)
heslo=$(date +%s | md5sum)
heslo=$(date +%s | sha256sum)
heslo=$(date +%s | sha256sum | base64)
heslo=$(date +%s | sha256sum | base64 | head -c 18)

od -An -N8 -to8 /dev/urandom | sha256sum | base64 | head -c 18
