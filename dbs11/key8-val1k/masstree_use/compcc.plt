reset

f(a) = a / 1e6
g(a) = a / 1e2

set key outside horiz center top box

#set format x "%1.0t{/Symbol \264}10^{%T}"
set xlabel "Number of Threads"
set autoscale y
set autoscale x


set terminal pngcairo enhanced color size 20cm,20cm
unset yrange
set format y "%1.0t{/Symbol \264}10^{%T}"
set ylabel "Throughput (tps)"
set output "comp_tuple1g_val1k_skew09_ycsbC_tps.png"
plot \
"result_cicada_ycsbC_tuple1g_skew09_val1k.dat" using 1:2:3:4 w errorlines pt 1 title "Cicada", \
"result_mocc_ycsbC_tuple1g_skew09_val1k.dat" using 1:2:3:4 w errorlines pt 3 title "MOCC", \
"result_silo_ycsbC_tuple1g_skew09_val1k.dat" using 1:2:3:4 w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbC_tuple1g_skew09_val1k.dat" using 1:2:3:4 w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbC_tuple1g_skew09_val1k.dat" using 1:2:3:4 w errorlines pt 10 title "TicToc", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple1g_val1k_skew09_ycsbC_ar.png"
plot \
"result_cicada_ycsbC_tuple1g_skew09_val1k.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_mocc_ycsbC_tuple1g_skew09_val1k.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC", \
"result_silo_ycsbC_tuple1g_skew09_val1k.dat" using 1:5:6:7 w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbC_tuple1g_skew09_val1k.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbC_tuple1g_skew09_val1k.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc", \

set xtics
set ylabel "Cache-miss rate"

set output "comp_tuple1g_val1k_skew09_ycsbC_ca.png"
plot \
"result_cicada_ycsbC_tuple1g_skew09_val1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_mocc_ycsbC_tuple1g_skew09_val1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC", \
"result_silo_ycsbC_tuple1g_skew09_val1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbC_tuple1g_skew09_val1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbC_tuple1g_skew09_val1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc", \

