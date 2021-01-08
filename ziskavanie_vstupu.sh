#!/bin/bash

echo Ake je tvoje meno?

read -p "Prosim, napis svoje meno: " meno

read -sp "Zadaj svoje heslo: " heslo   #-s (silent) volba ak nechcem aby bolo vidno na obrazovke co uzivatel pise
read -p "Zadaj meno priezvisko a email: " meno priezvisko email   #ak potrebujem nacitat viacero udajov 

echo Ahoj ${meno}
