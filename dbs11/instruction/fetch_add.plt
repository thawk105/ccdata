set xlabel "# Threads"
#set xlabel offset 0,0.3

set ylabel "[MOPS/SEC]"
#set ylabel offset -2.5,0

#set xlabel font "Courier,12"
#set ylabel font "Courier,12"
#set tics   font "Courier,12"
#set key    font "Courier,12"
#set key spacing 2

#set lmargin 12
#set bmargin 4
#set tmargin 3
set key horiz outside center top box

set notitle

#set ytics 0,0.5
set ytics autofreq
set grid

f(a) = a / 1e2
g(a) = a / 1e6

set autoscale y
unset key
set ytics 30
#set format y "%2.1t{/Symbol \264}10^{%T}"
set terminal pdfcairo enhanced color size 5cm,3cm
set output "fetch_add_tps.pdf"
plot \
 "fetch_add.dat" using 1:(g($2)) w lp title "fetch\\_add", \

set ytics 0.1
unset logscale y
set format y "%1.2f"
set ylabel "Cache-Miss Ratio"
set output "fetch_add_cm.pdf"
plot \
 "fetch_add.dat" using 1:(f($3)) w lp title "fetch\\_add", \
