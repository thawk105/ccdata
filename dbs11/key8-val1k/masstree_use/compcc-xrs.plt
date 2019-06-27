reset

f(a) = a / 1e6
g(a) = a / 1e2

set key outside horiz center top box

set format x "%1.0t{/Symbol \264}10^{%T}"
set xlabel "Database size"
set autoscale y
set logscale x

set grid

set terminal pdfcairo enhanced color size 20cm,20cm
unset yrange
set format y "%1.0t{/Symbol \264}10^{%T}"
set ylabel "Throughput (tps)"
set output "comp_tuple1000-100m_val1k_skew09_ycsbA_tps.pdf"
plot \
"result_cicada_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 2 title "ERMIA'", \
"result_mocc_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 3 title "MOCC", \
"result_si_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 4 title "SI", \
"result_silo_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 10 title "TicToc", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple1000-100m_val1k_skew09_ycsbA_ar.pdf"
plot \
"result_cicada_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA'", \
"result_mocc_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC", \
"result_si_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 4 title "SI", \
"result_silo_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc", \

set xtics
set ylabel "Cache-miss rate"

set output "comp_tuple1000-100m_val1k_skew09_ycsbA_ca.pdf"
plot \
"result_cicada_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA'", \
"result_mocc_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC", \
"result_si_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SI", \
"result_silo_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbA_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc", \

unset yrange
set format y "%1.0t{/Symbol \264}10^{%T}"
set ylabel "Throughput (tps)"
set output "comp_tuple1000-100m_val1k_skew09_ycsbB_tps.pdf"
plot \
"result_cicada_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 2 title "ERMIA'", \
"result_mocc_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 3 title "MOCC", \
"result_si_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 4 title "SI", \
"result_silo_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 10 title "TicToc", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple1000-100m_val1k_skew09_ycsbB_ar.pdf"
plot \
"result_cicada_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA'", \
"result_mocc_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC", \
"result_si_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 4 title "SI", \
"result_silo_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc", \

set xtics
set ylabel "Cache-miss rate"

set output "comp_tuple1000-100m_val1k_skew09_ycsbB_ca.pdf"
plot \
"result_cicada_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA'", \
"result_mocc_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC", \
"result_si_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SI", \
"result_silo_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbB_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc", \

unset yrange
set format y "%1.0t{/Symbol \264}10^{%T}"
set ylabel "Throughput (tps)"
set output "comp_tuple1000-100m_val1k_skew09_ycsbC_tps.pdf"
plot \
"result_cicada_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 2 title "ERMIA'", \
"result_mocc_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 3 title "MOCC", \
"result_si_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 4 title "SI", \
"result_silo_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:2:3:4 w errorlines pt 10 title "TicToc", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple1000-100m_val1k_skew09_ycsbC_ar.pdf"
plot \
"result_cicada_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA'", \
"result_mocc_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC", \
"result_si_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 4 title "SI", \
"result_silo_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc", \

set xtics
set ylabel "Cache-miss rate"

set output "comp_tuple1000-100m_val1k_skew09_ycsbC_ca.pdf"
plot \
"result_cicada_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA'", \
"result_mocc_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC", \
"result_si_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SI", \
"result_silo_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbC_tuple1000-100m_val1k_skew09.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc", \

