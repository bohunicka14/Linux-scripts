#!/bin/bash

ARGC=$#
EXPECTED_ARGC=3


if [ $ARGC -ne $EXPECTED_ARGC ]
then
  echo "Zadal si zle parametre!"
  exit
fi

name=$1
answer=$2
time=$3

re='^[0-9]+[smh]*$'
if ! [[ $time =~ $re ]] ; then
   echo "error: Not a number"
   exit
fi

if [ "$answer" == ano ]
then
  sleep $time
  output="chces"
elif [ "$answer" == nie ]
then
  output="nechces"
else
  echo "Nezadal si ano/nie."
  exit
fi

echo ${name}, zadal si cas $time a ${output} ho vykonat.