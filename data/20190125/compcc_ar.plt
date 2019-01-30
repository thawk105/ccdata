set xlabel "Number of threads"
set ylabel "Abort Rate"

set xlabel offset 0,0.3
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
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple500_ycsbA_ar.pdf"
plot "result_cicada_ycsbA_tuple500_ar.dat" w errorlines title "Cicada", "result_silo_ycsbA_tuple500_ar.dat" w errorlines title "Silo", "result_ermia_ycsbA_tuple500_ar.dat" w errorlines title "ERMIA'", "result_ermia-serial_ycsbA_tuple500_ar.dat" w errorlines title "ERMIA", "result_ss2pl_ycsbA_tuple500_ar.dat" w errorlines pt 6 title "SS2PL", "result_MOCC_ycsbA_tuple500_ar.dat" w errorlines pt 8 title "MOCC", "result_tictoc_ycsbA_tuple500_ar.dat" w errorlines pt 10 title "TicToc", "result_si_ycsbA_tuple500_ar.dat" w errorlines pt 12 title "SI", 

set terminal pdfcairo enhanced color size 6cm,6cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple500k_ycsbA_ar.pdf"
plot "result_cicada_ycsbA_tuple500k_ar.dat" w errorlines title "Cicada", "result_silo_ycsbA_tuple500k_ar.dat" w errorlines title "Silo", "result_ermia_ycsbA_tuple500k_ar.dat" w errorlines title "ERMIA'", "result_ermia-serial_ycsbA_tuple500k_ar.dat" w errorlines title "ERMIA", "result_ss2pl_ycsbA_tuple500k_ar.dat" w errorlines pt 6 title "SS2PL", "result_MOCC_ycsbA_tuple500k_ar.dat" w errorlines pt 8 title "MOCC", "result_tictoc_ycsbA_tuple500k_ar.dat" w errorlines pt 10 title "TicToc", "result_si_ycsbA_tuple500k_ar.dat" w errorlines pt 12 title "SI", 

set terminal pdfcairo enhanced color size 6cm,6cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple500_ycsbB_ar.pdf"
plot "result_cicada_ycsbB_tuple500_ar.dat" w errorlines title "Cicada", "result_silo_ycsbB_tuple500_ar.dat" w errorlines title "Silo", "result_ermia_ycsbB_tuple500_ar.dat" w errorlines title "ERMIA'", "result_ermia-serial_ycsbB_tuple500_ar.dat" w errorlines title "ERMIA", "result_ss2pl_ycsbB_tuple500_ar.dat" w errorlines pt 6 title "SS2PL", "result_MOCC_ycsbB_tuple500_ar.dat" w errorlines pt 8 title "MOCC", "result_tictoc_ycsbB_tuple500_ar.dat" w errorlines pt 10 title "TicToc", "result_si_ycsbB_tuple500_ar.dat" w errorlines pt 12 title "SI", 

set terminal pdfcairo enhanced color size 6cm,6cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple500k_ycsbB_ar.pdf"
plot "result_cicada_ycsbB_tuple500k_ar.dat" w errorlines title "Cicada", "result_silo_ycsbB_tuple500k_ar.dat" w errorlines title "Silo", "result_ermia_ycsbB_tuple500k_ar.dat" w errorlines title "ERMIA'", "result_ermia-serial_ycsbB_tuple500k_ar.dat" w errorlines title "ERMIA", "result_ss2pl_ycsbB_tuple500k_ar.dat" w errorlines pt 6 title "SS2PL", "result_MOCC_ycsbB_tuple500k_ar.dat" w errorlines pt 8 title "MOCC", "result_tictoc_ycsbB_tuple500k_ar.dat" w errorlines pt 10 title "TicToc", "result_si_ycsbB_tuple500k_ar.dat" w errorlines pt 12 title "SI", 

