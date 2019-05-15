set xlabel "Number of threads"
set xlabel offset 0,0.3

set ylabel "Throughput\n(req/sec, millions)"
set ylabel offset -5.0,0

set xlabel font "Courier,17"
set ylabel font "Courier,17"
set tics   font "Courier,17"
set key    font "Courier,17"
set key spacing 1.5

set lmargin 18
set rmargin 6
set bmargin 4

set key horiz outside center top box

set format y "%2.1t{/Symbol \264}10^{%T}"
#set format y "%1.1f"
set notitle

#set ytics 0,0.5
set autoscale y
set ytics autofreq
set grid

f(a) = a / 1e6

set terminal pdfcairo enhanced color size 16cm,8cm
set output "masstree_test.pdf"
plot \
 "result_masstree_insertion.dat" using 1:2 w lp title "insertion", \
 "result_masstree_get.dat" using 1:2 w lp title "get - 128M keys", \
 "result_masstree_put.dat" using 1:2 w lp title "put - 128M keys", \

set xlabel "Number of Keys"
set terminal pdfcairo enhanced color size 16cm,8cm
set output "masstree_test_xrs.pdf"
set logscale x
set format x "%2.0t{/Symbol \264}10^{%T}"
plot \
 "result_masstree_put_xrs.dat" using 1:2 w lp title "put", \
 "result_masstree_get_xrs.dat" using 1:2 w lp title "get", \

g(a) = 1e9 / (a * 1e6)
set terminal pdfcairo enhanced color size 16cm,8cm
set output "masstree_test_xrs_latency.pdf"
set logscale y
set format y "%1.1t{/Symbol \264}10^{%T}"
set ylabel "Latency\n(nano-sec/req)"
plot \
 "result_masstree_put_xrs.dat" using 1:(g($2)) w lp title "put", \
 "result_masstree_get_xrs.dat" using 1:(g($2)) w lp title "get", \

