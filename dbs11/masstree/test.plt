set xlabel "Number of threads"
set xlabel offset 0,0.3

set ylabel "Throughput\n(req/sec, millions)"
set ylabel offset -2.5,0

set xlabel font "Courier,17"
set ylabel font "Courier,17"
set tics   font "Courier,17"
set key    font "Courier,17"
set key spacing 1.5

set lmargin 14
set bmargin 4

set key horiz outside center top box

#set format y "%2.0t{/Symbol \264}10^{%T}"
set format y "%1.1f"
set notitle

#set ytics 0,0.5
set autoscale y
set ytics autofreq
set grid

f(a) = a / 1e6

set terminal pdfcairo enhanced color size 8cm,8cm
set output "masstree_test.pdf"
plot \
 "result_masstree_insertion.dat" using 1:2 w lp title "insertion", \
 "result_masstree_get.dat" using 1:2 w lp title "get - 128M keys", \
 "result_masstree_put.dat" using 1:2 w lp title "put - 128M keys", \

