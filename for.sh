#!/bin/bash

for toto in $@  #vsetko, co poslem do scriptu... "$@" musim dat do uvodzoviek, aby mi bralo argumenty samostatne, ktore su v uvodzokach.
do
echo $toto
done

for toto in $* #aj * sa da pouzit, aby sa prijalo vsetko, co posielam do scriptu. Ak dam "$*" tak mi vstup berie ako jeden cely string a nie ako "pole" argumentov
do
echo $toto
done

for toto in {1..10..2} #begin, end, step
do
echo $toto
done

ona="a b 1 2"
for toto in $ona
do
echo $toto
done

for ((i = 0 ; i <= 100; i++));do
echo $i
done
