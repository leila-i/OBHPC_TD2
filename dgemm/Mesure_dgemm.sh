#!/bin/bash

#
make clean

#
n=104
r=112
taskset="taskset -c 0"

#
sudo cpupower -c 0 frequency-set -g performance

#gcc
make CC=gcc OFLAGS=-O0
$taskset ./dgemm $n $r > "Mesure/$n-x-$r-gcc-O0.dat" 
make clean

make CC=gcc OFLAGS=-O1
$taskset ./dgemm $n $r > "Mesure/$n-x-$r-gcc-O1.dat" 
make clean

make CC=gcc OFLAGS=-O2
$taskset ./dgemm $n $r > "Mesure/$n-x-$r-gcc-O2.dat" 
make clean

make CC=gcc OFLAGS=-O3
$taskset ./dgemm $n $r > "Mesure/$n-x-$r-gcc-O3.dat" 
make clean

make CC=gcc OFLAGS=-Os
$taskset ./dgemm $n $r > "Mesure/$n-x-$r-gcc-Os.dat" 
make clean

make CC=gcc OFLAGS=-Og
$taskset ./dgemm $n $r > "Mesure/$n-x-$r-gcc-Og.dat" 
make clean

make CC=gcc OFLAGS=-Ofast
$taskset ./dgemm $n $r > "Mesure/$n-x-$r-gcc-Ofast.dat" 
make clean

#clang
make CC=clang OFLAGS=-O0
$taskset ./dgemm $n $r > "Mesure/$n-x-$r-clang-O0.dat" 
make clean

make CC=clang OFLAGS=-O1
$taskset ./dgemm $n $r > "Mesure/$n-x-$r-clang-O1.dat" 
make clean

make CC=clang OFLAGS=-O2
$taskset ./dgemm $n $r > "Mesure/$n-x-$r-clang-O2.dat" 
make clean

make CC=clang OFLAGS=-O3
$taskset ./dgemm $n $r > "Mesure/$n-x-$r-clang-O3.dat" 
make clean

make CC=clang OFLAGS=-Os
$taskset ./dgemm $n $r > "Mesure/$n-x-$r-clang-Os.dat" 
make clean

make CC=clang OFLAGS=-Og
$taskset ./dgemm $n $r > "Mesure/$n-x-$r-clang-Og.dat" 
make clean

make CC=clang OFLAGS=-Ofast
$taskset ./dgemm $n $r > "Mesure/$n-x-$r-clang-Ofast.dat" 
make clean
