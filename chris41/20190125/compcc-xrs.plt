
set tics   font "Courier,17"
set key    font "Courier,17"
set key spacing 1.5

set lmargin 12
set rmargin 15
set bmargin 4

set key horiz outside center top box

#set format y "%2.0t{/Symbol \264}10^{%T}"
set format y "%1.1f"
set notitle

set grid

set logscale x
set autoscale y

f(a) = a / 1e6

set ylabel "Throughput (M tps)"
set ylabel font "Courier,17"
set ylabel offset -2.5,0
set ytics autofreq

set terminal pdfcairo enhanced color size 12cm,12cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple100-10m_ycsbA.pdf"
set multiplot

set tmargin screen 0.9
set bmargin screen 0.7
plot \
"result_cicada_ycsbA_tuple100-10m.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 1 title "Cicada", \
"result_silo_ycsbA_tuple100-10m.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "Silo", \
"result_ermia_ycsbA_tuple100-10m.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 3 title "ERMIA'", \
"result_ermia-serial_ycsbA_tuple100-10m.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 4 title "ERMIA", \
"result_ss2pl_ycsbA_tuple100-10m.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 6 title "SS2PL", \
"result_mocc_ycsbA_tuple100-10m.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "MOCC", \
"result_tictoc_ycsbA_tuple100-10m.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 10 title "TicToc", \
"result_si_ycsbA_tuple100-10m.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 12 title "SI", \

set ylabel "Abort Rate"
set ytics offset -0.5,0
set format y "%1.2f"
set yrange [0:1]

unset key
set tmargin screen 0.6
set bmargin screen 0.4
plot \
"result_cicada_ycsbA_tuple100-10m_ar.dat" axis x1y2 w errorlines pt 1 , \
"result_silo_ycsbA_tuple100-10m_ar.dat" axis x1y2 w errorlines pt 2, \
"result_ermia_ycsbA_tuple100-10m_ar.dat" axis x1y2 w errorlines pt 3, \
"result_ermia-serial_ycsbA_tuple100-10m_ar.dat" axis x1y2 w errorlines pt 4, \
"result_ss2pl_ycsbA_tuple100-10m_ar.dat" axis x1y2 w errorlines pt 6, \
"result_mocc_ycsbA_tuple100-10m_ar.dat" axis x1y2 w errorlines pt 8, \
"result_tictoc_ycsbA_tuple100-10m_ar.dat" axis x1y2 w errorlines pt 10, \
"result_si_ycsbA_tuple100-10m_ar.dat" axis x1y2 w errorlines pt 12

set xtics
set xlabel "Database size"
set xlabel font "Courier,17"
set xlabel offset 0,0.3

set ylabel "Cache-miss rate"

set tmargin screen 0.3
set bmargin screen 0.1
plot \
"result_cicada_ycsbA_tuple100-10m_cachemiss.dat" axis x1y2 w errorlines pt 1 , \
"result_silo_ycsbA_tuple100-10m_cachemiss.dat" axis x1y2 w errorlines pt 2, \
"result_ermia_ycsbA_tuple100-10m_cachemiss.dat" axis x1y2 w errorlines pt 3, \
"result_ermia-serial_ycsbA_tuple100-10m_cachemiss.dat" axis x1y2 w errorlines pt 4, \
"result_ss2pl_ycsbA_tuple100-10m_cachemiss.dat" axis x1y2 w errorlines pt 6, \
"result_mocc_ycsbA_tuple100-10m_cachemiss.dat" axis x1y2 w errorlines pt 8, \
"result_tictoc_ycsbA_tuple100-10m_cachemiss.dat" axis x1y2 w errorlines pt 10, \
"result_si_ycsbA_tuple100-10m_cachemiss.dat" axis x1y2 w errorlines pt 12

