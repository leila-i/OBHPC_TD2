#!/bin/bash

#
make clean

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

sudo cpupower -c 0 frequency-set -g performance
taskset -c 0 ./dgemm $n $r > "Mesure/$n-x-$r-$cc$Oflags.dat"

#
make clean

