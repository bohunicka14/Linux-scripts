#!/bin/bash

prva=$1
druha=$2

echo $prva
echo $druha

if [[ $prva = *"$druha"* ]]
then 
echo OK


fi
