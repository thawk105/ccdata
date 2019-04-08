
set xlabel "Number of threads"
set ylabel "Memory bandwidth [GiB/s]"

set autoscale y

set key horiz outside center top box

f(a) = a / 1024

set terminal pdfcairo enhanced color size 10cm,10cm
set output "membench.pdf"
plot \
       "membench.dat" using 1:(f($2)) w lp title "Sequential read", \
       "membench.dat" using 1:(f($3)) w lp title "Sequential write", \
       "membench.dat" using 1:(f($4)) w lp title "Random read", \
       "membench.dat" using 1:(f($5)) w lp title "Random write", \

