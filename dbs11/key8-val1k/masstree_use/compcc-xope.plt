reset

#set xlabel font "Courier,27"
#set ylabel font "Courier,27"
#set tics   font "Courier,27"
#set key    font "Courier,27"
#set key spacing 1
#
#set xtics  offset 0,-1
#set xlabel offset 0,-2
#set ylabel offset -9,0
#
#set tmargin 8
#set lmargin 20
#set bmargin 7
#set rmargin 7

f(a) = a / 1e6
g(a) = a / 1e2

set key outside horiz center top box

set grid

#set format x "%1.0t{/Symbol \264}10^{%T}"
set xlabel "Operations / Transaction"


set terminal pdfcairo enhanced color size 7.5cm,5cm
unset yrange
set logscale y
set format y "%1.0t{/Symbol \264}10^{%T}"
set ylabel "Throughput (tps)"
set output "comp_tuple1m_val1k_skew09_ope10-100_ycsbB_tps.pdf"
plot \
"result_cicada_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:2:3:4 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:2:3:4 w errorlines pt 2 title "ERMIA'", \
"result_mocc_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:2:3:4 w errorlines pt 3 title "MOCC", \
"result_si_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:2:3:4 w errorlines pt 4 title "SI", \
"result_silo_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:2:3:4 w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:2:3:4 w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:2:3:4 w errorlines pt 10 title "TicToc", \

unset logscale y
set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple1m_val1k_skew09_ope10-100_ycsbB_ar.pdf"
plot \
"result_cicada_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA'", \
"result_mocc_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC", \
"result_si_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:5:6:7 w errorlines pt 4 title "SI", \
"result_silo_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:5:6:7 w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc", \

set xtics
set ylabel "Cache-Miss Rate"

set output "comp_tuple1m_val1k_skew09_ope10-100_ycsbB_ca.pdf"
plot \
"result_cicada_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA'", \
"result_mocc_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC", \
"result_si_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SI", \
"result_silo_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbB_tuple1m_val1k_skew09_ope10-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc", \

