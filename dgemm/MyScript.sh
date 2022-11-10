#!/bin/bash

#
make clean
mkdir "Mesure"
echo "# Création de répertoires: Mesure"

#
echo "Entrer le compilateur :"
read cc
make CC=$cc

#
echo "Entrer n :"
read n
echo "Entrer r :"
read r
./dgemm $n $r > "Mesure/$n-x-$r-$cc.dat"
cd "Mesure"

#
mkdir -p "$n-x-$r-$cc"
echo "# Création de répertoires: Mesure/$n-x-$r-$cc"

#
nb=$( wc -l "$n-x-$r-$cc.dat"  | cut -d' ' -f1 )

#
for (( i=1; i < $nb; i++ ));
do
    head -n 1 "$n-x-$r-$cc.dat" > "$n-x-$r-$cc/$i-$cc.dat"
    echo "$(tail -n "$i" "$n-x-$r-$cc.dat" | head -n 1)" | awk '{gsub(/;/,"")}1'  >> "$n-x-$r-$cc/$i-$cc.dat"
    echo "# Création du fichier: Mesure/$n-x-$r-$cc/$i-$cc.dat"
done
