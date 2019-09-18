reset

set xlabel font "Courier,27"
set ylabel font "Courier,27"
set tics   font "Courier,27"
set key    font "Courier,27"
set key spacing 1

set xtics  offset 0,-1
set xlabel offset 0,-2
set ylabel offset -9,0

set tmargin 8
set lmargin 20
set bmargin 7
set rmargin 7

f(a) = a / 1e6
g(a) = a / 1e2

set key outside horiz center top box

set grid

#set format x "%1.0t{/Symbol \264}10^{%T}"
set xlabel "Number of Threads"
set autoscale y
set autoscale x

set terminal pdfcairo enhanced color size 20cm,20cm
unset yrange
set format y "%1.0t{/Symbol \264}10^{%T}"
set ylabel "Throughput (tps)"
set output "comp_tuple1g_val1k_skew09_ycsbC_tps.pdf"
plot \
"result_cicada_ycsbC_tuple1g_skew09_val1k.dat" using 1:2:3:4 w errorlines pt 1 title "Cicada", \
"result_mocc_ycsbC_tuple1g_skew09_val1k.dat" using 1:2:3:4 w errorlines pt 3 title "MOCC", \
"result_silo_ycsbC_tuple1g_skew09_val1k.dat" using 1:2:3:4 w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbC_tuple1g_skew09_val1k.dat" using 1:2:3:4 w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbC_tuple1g_skew09_val1k.dat" using 1:2:3:4 w errorlines pt 10 title "TicToc", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple1g_val1k_skew09_ycsbC_ar.pdf"
plot \
"result_cicada_ycsbC_tuple1g_skew09_val1k.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_mocc_ycsbC_tuple1g_skew09_val1k.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC", \
"result_silo_ycsbC_tuple1g_skew09_val1k.dat" using 1:5:6:7 w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbC_tuple1g_skew09_val1k.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbC_tuple1g_skew09_val1k.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc", \

set xtics
set ylabel "Cache-miss rate"

set output "comp_tuple1g_val1k_skew09_ycsbC_ca.pdf"
plot \
"result_cicada_ycsbC_tuple1g_skew09_val1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_mocc_ycsbC_tuple1g_skew09_val1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC", \
"result_silo_ycsbC_tuple1g_skew09_val1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbC_tuple1g_skew09_val1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbC_tuple1g_skew09_val1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc", \

unset yrange
set format y "%1.0t{/Symbol \264}10^{%T}"
set ylabel "Throughput (tps)"
set xrange [1:81]
set output "comp_tuple10m_val1k_ycsbC_tps.pdf"
plot \
"result_silo_ycsbC_tuple10m_ope2.dat" using 1:2:3:4 w errorlines pt 1 title "Silo", \
"result_tictoc_ycsbC_tuple10m_ope2.dat" using 1:2:3:4 w errorlines pt 2 title "TicToc", \

set output "comp_tuple10m_val1k_ycsb_medium_tps.pdf"
plot \
"result_silo_ycsb_tuple10m_skew08.dat" using 1:2:3:4 w errorlines pt 1 title "Silo", \
"result_tictoc_ycsb_tuple10m_skew08.dat" using 1:2:3:4 w errorlines pt 2 title "TicToc", \
