set xlabel "Number of threads"
set xlabel offset 0,0.3

set ylabel "Throughput (M tps)"
set ylabel offset -2.5,0

set xlabel font "Courier,17"
set ylabel font "Courier,17"
set tics   font "Courier,17"
set key    font "Courier,17"
set key spacing 1.5

set lmargin 12
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

set terminal pdfcairo enhanced color size 6cm,6cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple500_ycsbA.pdf"
plot "result_cicada_ycsbA_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines title "Cicada", "result_silo_ycsbA_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines title "Silo", "result_ermia_ycsbA_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines title "ERMIA'", "result_ermia-serial_ycsbA_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines title "ERMIA", "result_ss2pl_ycsbA_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines title "SS2PL", "result_mocc_ycsbA_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 6 title "MOCC", "result_tictoc_ycsbA_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "TicToc", "result_si_ycsbA_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "SI"

set terminal pdfcairo enhanced color size 6cm,6cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple500k_ycsbA.pdf"
plot "result_cicada_ycsbA_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines title "Cicada", "result_silo_ycsbA_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines title "Silo", "result_ermia_ycsbA_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines title "ERMIA'", "result_ermia-serial_ycsbA_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines title "ERMIA", "result_ss2pl_ycsbA_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines title "SS2PL", "result_mocc_ycsbA_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 6 title "MOCC", "result_tictoc_ycsbA_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "TicToc", "result_si_ycsbA_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "SI"

set terminal pdfcairo enhanced color size 6cm,6cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple5m_ycsbA.pdf"
plot "result_cicada_ycsbA_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines title "Cicada", "result_silo_ycsbA_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines title "Silo", "result_ermia_ycsbA_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines title "ERMIA'", "result_ermia-serial_ycsbA_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines title "ERMIA", "result_ss2pl_ycsbA_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines title "SS2PL", "result_mocc_ycsbA_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 6 title "MOCC", "result_tictoc_ycsbA_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "TicToc", "result_si_ycsbA_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "SI"

set terminal pdfcairo enhanced color size 6cm,6cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple500_ycsbB.pdf"
plot "result_cicada_ycsbB_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines title "Cicada", "result_silo_ycsbB_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines title "Silo", "result_ermia_ycsbB_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines title "ERMIA'", "result_ermia-serial_ycsbB_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines title "ERMIA", "result_ss2pl_ycsbB_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines title "SS2PL", "result_mocc_ycsbB_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 6 title "MOCC", "result_tictoc_ycsbB_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "TicToc", "result_si_ycsbB_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "SI"

set terminal pdfcairo enhanced color size 6cm,6cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple500k_ycsbB.pdf"
plot "result_cicada_ycsbB_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines title "Cicada", "result_silo_ycsbB_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines title "Silo", "result_ermia_ycsbB_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines title "ERMIA'", "result_ermia-serial_ycsbB_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines title "ERMIA", "result_ss2pl_ycsbB_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines title "SS2PL", "result_mocc_ycsbB_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 6 title "MOCC", "result_tictoc_ycsbB_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "TicToc", "result_si_ycsbB_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "SI"

set terminal pdfcairo enhanced color size 6cm,6cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple5m_ycsbB.pdf"
plot "result_cicada_ycsbB_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines title "Cicada", "result_silo_ycsbB_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines title "Silo", "result_ermia_ycsbB_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines title "ERMIA'", "result_ermia-serial_ycsbB_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines title "ERMIA", "result_ss2pl_ycsbB_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines title "SS2PL", "result_mocc_ycsbB_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 6 title "MOCC", "result_tictoc_ycsbB_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "TicToc", "result_si_ycsbB_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "SI"

set terminal pdfcairo enhanced color size 6cm,6cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple500_ycsbC.pdf"
plot "result_cicada_ycsbC_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines title "Cicada", "result_silo_ycsbC_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines title "Silo", "result_ermia_ycsbC_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines title "ERMIA'", "result_ermia-serial_ycsbC_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines title "ERMIA","result_ss2pl_ycsbC_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines title "SS2PL", "result_mocc_ycsbC_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 6 title "MOCC", "result_tictoc_ycsbC_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "TicToc", "result_si_ycsbC_tuple500.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "SI"

set terminal pdfcairo enhanced color size 6cm,6cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple500k_ycsbC.pdf"
plot "result_cicada_ycsbC_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines title "Cicada", "result_silo_ycsbC_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines title "Silo", "result_ermia_ycsbC_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines title "ERMIA'", "result_ermia-serial_ycsbC_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines title "ERMIA", "result_ss2pl_ycsbC_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines title "SS2PL", "result_mocc_ycsbC_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 6 title "MOCC", "result_tictoc_ycsbC_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "TicToc", "result_si_ycsbC_tuple500k.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "SI"

set terminal pdfcairo enhanced color size 6cm,6cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple5m_ycsbC.pdf"
plot "result_cicada_ycsbC_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines title "Cicada", "result_silo_ycsbC_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines title "Silo", "result_ermia_ycsbC_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines title "ERMIA'", "result_ermia-serial_ycsbC_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines title "ERMIA","result_ss2pl_ycsbC_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines title "SS2PL", "result_mocc_ycsbC_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 6 title "MOCC", "result_tictoc_ycsbC_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "TicToc", "result_si_ycsbC_tuple5m.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 8 title "SI"

