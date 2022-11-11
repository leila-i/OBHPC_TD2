#!/bin/bash

#
make clean
mkdir "Mesure"
echo "# Création de répertoires: Mesure"

#
echo "Entrer le compilateur :"
read cc
echo "Entrer le flags d'optimisation :"
read Oflags
make CC=$cc OFLAGS=$Oflags

#
echo "Entrer n :"
read n
echo "Entrer r :"
read r
./dotprod $n $r > "Mesure/$n-x-$r-$cc$Oflags.dat"
