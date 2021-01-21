#!/bin/bash

echo Toto je moj user $SUDO_USER ale prihlaseny som ako $USER
echo Toto je hostname tohoto stroja $HOSTNAME

sleep 5
echo Takto dlho zatial trva tento script $SECONDS
echo Toto je nahodne cislo $RANDOM
echo Toto je cislo aktualneho riadku $LINENO
sleep 3 
echo Takto to trva potialto $SECONDS

declare -pi #vypise co bash ponuka 
declare -pr #read only
declare -px #exportovane premenne


