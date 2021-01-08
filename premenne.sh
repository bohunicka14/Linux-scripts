#!/bin/bash

meno=Inka

echo Moje meno je "$meno"o #musim pouzit dvojite uvodzovky ak chcem vypisat nieco hned za premennou a tak aby sa vypisala hodnota v premennej
echo Moje meno je '$meno'  #vypise len text v uvodzovkach a nie hodnotu v premennej
echo Moje meno je \'$meno\' #vypise aj hodnotu premennej
echo MOje meno je ${meno}  # aj takto viem vypisat hodnotu premennej, mozem tam aj pridat dalsi text hned za zatvorkou


