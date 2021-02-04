#!/bin/bash

((sucet=$1+$2))
echo ${sucet}

expr $1 + $2   #netreba echo

sucet2=$(expr $1 + $2)
echo ${sucet2}

