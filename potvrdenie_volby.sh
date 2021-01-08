#!/bin/bash

echo Zacinam
read -p "Chces pokracovat? [y/N]" next
: '
if [[ $next == [Nn] ]]
then
exit
fi
'
case $next in
[yY])
echo Yes
;;
[nN])
echo No
exit
;;
*)
echo Vsetko ostatne
exit
esac
echo Pokracujem
