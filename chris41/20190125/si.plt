
set logscale x
set xlabel "Database size"
set xlabel font "Courier,17"
set xlabel offset 0,0.3

set ylabel "Throughput (M tps)"
set ylabel font "Courier,17"
set ylabel offset -2.5,0

set y2label "Rate"
set y2label font "Courier,17"
set y2label offset 3,0
set y2tics offset 3,0
set y2range [0:1]

set tics   font "Courier,17"
set key    font "Courier,17"
set key spacing 1.5

set lmargin 12
set rmargin 15
set bmargin 4

set key horiz outside center top box

#set format y "%2.0t{/Symbol \264}10^{%T}"
set format y "%1.1f"
set format y2 "%1.2f"

#set ytics 0,0.5
set autoscale y
set autoscale y2
set ytics autofreq
set y2tics autofreq
set grid

f(a) = a / 1e6
g(b) = b / 1e2

set title "SI"
set terminal pdfcairo enhanced color size 12cm,6cm
set output "comp_si_tuple100-10m_ycsbA.pdf"
plot \
"result_si_ycsbA_tuple100-10m.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 1 title "Throughput", \
"result_si_ycsbA_tuple100-10m_ar.dat" axis x1y2 w errorlines pt 1 title "Abort rate", \
"result_si_ycsbA_tuple100-10m_cachemiss.dat" using 1:(g($2), g($3), g($4)) axis x1y2 w errorlines pt 1 title "Cache-miss rate", \
