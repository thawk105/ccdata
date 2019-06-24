reset

f(a) = a / 1e6
g(a) = a / 1e2

set key outside horiz center top box

set logscale x
set format x "%1.0t{/Symbol \264}10^{%T}"
set xlabel "Database size"


set terminal pngcairo enhanced color size 20cm,20cm
set format y "%1.0t{/Symbol \264}10^{%T}"
set ylabel "Throughput"
set autoscale y
set output "comp_tuple1k-1g_ycsbA_tps.png"
plot \
"result_cicada_ycsbA_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbA_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbA_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbA_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 4 title "SI" ,\
"result_silo_ycsbA_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbA_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbA_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 10 title "TicToc" ,\

set output "comp_tuple1k-1g_ycsbB_tps.png"
plot \
"result_cicada_ycsbB_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbB_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbB_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbB_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 4 title "SI" ,\
"result_silo_ycsbB_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbB_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbB_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 10 title "TicToc" ,\

set output "comp_tuple1k-1g_ycsbC_tps.png"
plot \
"result_cicada_ycsbC_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbC_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbC_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbC_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 4 title "SI" ,\
"result_silo_ycsbC_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbC_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbC_tuple1k-1g.dat" using 1:2:3:4 w errorlines pt 10 title "TicToc" ,\

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple1k-1g_ycsbA_ar.png"
plot \
"result_cicada_ycsbA_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbA_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbA_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbA_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 4 title "SI" ,\
"result_silo_ycsbA_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbA_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbA_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc" ,\

set output "comp_tuple1k-1g_ycsbB_ar.png"
plot \
"result_cicada_ycsbB_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbB_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbB_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbB_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 4 title "SI" ,\
"result_silo_ycsbB_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbB_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbB_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc" ,\

set output "comp_tuple1k-1g_ycsbC_ar.png"
plot \
"result_cicada_ycsbC_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbC_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbC_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbC_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 4 title "SI" ,\
"result_silo_ycsbC_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbC_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbC_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc" ,\

set xtics
set ylabel "Cache-miss rate"

set output "comp_tuple1k-1g_ycsbA_ca.png"
plot \
"result_cicada_ycsbA_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbA_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbA_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbA_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SI" ,\
"result_silo_ycsbA_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbA_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbA_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc" ,\

set output "comp_tuple1k-1g_ycsbB_ca.png"
plot \
"result_cicada_ycsbB_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbB_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbB_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbB_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SI" ,\
"result_silo_ycsbB_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbB_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbB_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc" ,\

set output "comp_tuple1k-1g_ycsbC_ca.png"
plot \
"result_cicada_ycsbC_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbC_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbC_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbC_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SI" ,\
"result_silo_ycsbC_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbC_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbC_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc" ,\

