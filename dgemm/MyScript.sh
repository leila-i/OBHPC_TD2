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
./dgemm $n $r > "Mesure/$n-x-$r-$cc$Oflags.dat"
cd "Mesure"

#
#mkdir -p "$n-x-$r-$cc$Oflags"
#echo "# Création de répertoires: Mesure/$n-x-$r-$cc$Oflags"

#
#nb=$( wc -l "$n-x-$r-$cc$Oflags.dat"  | cut -d' ' -f1 )

#
#for (( i=1; i < $nb; i++ ));
#do
#    head -n 1 "$n-x-$r-$cc$Oflags.dat" > "$n-x-$r-$cc$Oflags/$i-$cc$Oflags.dat"
#    echo "$(tail -n "$i" "$n-x-$r-$cc$Oflags.dat" | head -n 1)" | awk '{gsub(/;/,"")}1'  >> "$n-x-$r-$cc$Oflags/$i-$cc$Oflags.dat"
#    echo "# Création du fichier: Mesure/$n-x-$r-$cc$Oflags/$i-$cc$Oflags.dat"
#done
