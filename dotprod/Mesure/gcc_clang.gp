set terminal pngcairo font 'arial,12' size 1000, 800
set output 'gcc_clang.png'

set style fill solid 1.00 
set style data histograms 
set grid

set xtics border in scale 0,0 nomirror rotate by -45 autojustify

set xrange [ * : * ]
set yrange [ * : * ]

set ylabel 'bandwidth in MiB/s'
set xlabel 'Dotprod de matrice 104x112'

set title "Compareson de gcc et clang"
plot '104-x-112-gcc-O3.dat' using 15:xtic(1) ti 'gcc' lc rgb '#3399FF', \
     '104-x-112-clang-O3.dat' using 15:xtic(1) ti 'clang' lc rgb '#9933FF'
