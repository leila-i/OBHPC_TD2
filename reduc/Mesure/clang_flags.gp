set terminal pngcairo font 'arial,12' size 1000, 800
set output 'clang_flags.png'

set style fill solid 1.00 
set style data histograms 
set grid

set xtics border in scale 0,0 nomirror rotate by -45 autojustify

set xrange [ * : * ]
set yrange [ * : * ]

set ylabel 'bandwidth in MiB/s'
set xlabel 'Redic de matrice 104x112'

set title "les diferant flags d'optimisation clang"
plot '104-x-112-clang-O0.dat' using 15:xtic(1) ti '-O0' lc rgb '#FF3333', \
     '104-x-112-clang-O1.dat' using 15:xtic(1) ti '-O1' lc rgb '#FF9933', \
     '104-x-112-clang-O2.dat' using 15:xtic(1) ti '-O2' lc rgb '#FFFF33', \
     '104-x-112-clang-O3.dat' using 15:xtic(1) ti '-O3' lc rgb '#33FFFF', \
     '104-x-112-clang-Os.dat' using 15:xtic(1) ti '-Os' lc rgb '#3399FF', \
     '104-x-112-clang-Og.dat' using 15:xtic(1) ti '-Og' lc rgb '#9933FF', \
     '104-x-112-clang-Ofast.dat' using 15:xtic(1) ti '-Ofast' lc rgb '#FF66FF'
