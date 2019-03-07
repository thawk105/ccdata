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

set title "Throughput"

#kugiri
set terminal pdfcairo enhanced color size 8cm,8cm
set output "comp_r0_tuple200.pdf"
plot \
 "result_cicada_r0_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Cicada", \
 "result_silo_r0_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Silo", \
 "result_ermia_r0_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "ERMIA'", \
 "result_ss2pl_r0_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "SS2PL", \
 "result_mocc_r0_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "MOCC", \
 "result_tictoc_r0_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "TicToc", \
 "result_si_r0_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "SI"

set terminal pdfcairo enhanced color size 8cm,8cm
set output "comp_r2_tuple200.pdf"
plot \
 "result_cicada_r2_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Cicada", \
 "result_silo_r2_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Silo", \
 "result_ermia_r2_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "ERMIA'", \
 "result_ss2pl_r2_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "SS2PL", \
 "result_mocc_r2_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "MOCC", \
 "result_tictoc_r2_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "TicToc", \
 "result_si_r2_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "SI"

set terminal pdfcairo enhanced color size 8cm,8cm
set output "comp_r8_tuple200.pdf"
plot \
 "result_cicada_r8_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Cicada", \
 "result_silo_r8_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Silo", \
 "result_ermia_r8_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "ERMIA'", \
 "result_ss2pl_r8_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "SS2PL", \
 "result_mocc_r8_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "MOCC", \
 "result_tictoc_r8_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "TicToc", \
 "result_si_r8_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "SI"

set terminal pdfcairo enhanced color size 8cm,8cm
set output "comp_r10_tuple200.pdf"
plot \
 "result_cicada_r10_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Cicada", \
 "result_silo_r10_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Silo", \
 "result_ermia_r10_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "ERMIA'", \
 "result_ss2pl_r10_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "SS2PL", \
 "result_mocc_r10_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "MOCC", \
 "result_tictoc_r10_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "TicToc", \
 "result_si_r10_tuple200.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "SI"

#kugiri
set terminal pdfcairo enhanced color size 8cm,8cm
set output "comp_r0_tuple1k.pdf"
plot \
 "result_cicada_r0_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Cicada", \
 "result_silo_r0_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Silo", \
 "result_ermia_r0_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "ERMIA'", \
 "result_ss2pl_r0_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "SS2PL", \
 "result_mocc_r0_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "MOCC", \
 "result_tictoc_r0_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "TicToc", \
 "result_si_r0_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "SI"

set terminal pdfcairo enhanced color size 8cm,8cm
set output "comp_r2_tuple1k.pdf"
plot \
 "result_cicada_r2_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Cicada", \
 "result_silo_r2_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Silo", \
 "result_ermia_r2_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "ERMIA'", \
 "result_ss2pl_r2_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "SS2PL", \
 "result_mocc_r2_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "MOCC", \
 "result_tictoc_r2_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "TicToc", \
 "result_si_r2_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "SI"

set terminal pdfcairo enhanced color size 8cm,8cm
set output "comp_r8_tuple1k.pdf"
plot \
 "result_cicada_r8_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Cicada", \
 "result_silo_r8_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Silo", \
 "result_ermia_r8_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "ERMIA'", \
 "result_ss2pl_r8_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "SS2PL", \
 "result_mocc_r8_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "MOCC", \
 "result_tictoc_r8_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "TicToc", \
 "result_si_r8_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "SI"

set terminal pdfcairo enhanced color size 8cm,8cm
set output "comp_r10_tuple1k.pdf"
plot \
 "result_cicada_r10_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Cicada", \
 "result_silo_r10_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Silo", \
 "result_ermia_r10_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "ERMIA'", \
 "result_ss2pl_r10_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "SS2PL", \
 "result_mocc_r10_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "MOCC", \
 "result_tictoc_r10_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "TicToc", \
 "result_si_r10_tuple1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "SI"

#kugiri
set terminal pdfcairo enhanced color size 8cm,8cm
set output "comp_r0_tuple1m.pdf"
plot \
 "result_cicada_r0_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Cicada", \
 "result_silo_r0_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Silo", \
 "result_ermia_r0_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "ERMIA'", \
 "result_ss2pl_r0_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "SS2PL", \
 "result_mocc_r0_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "MOCC", \
 "result_tictoc_r0_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "TicToc", \
 "result_si_r0_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "SI"

set terminal pdfcairo enhanced color size 8cm,8cm
set output "comp_r2_tuple1m.pdf"
plot \
 "result_cicada_r2_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Cicada", \
 "result_silo_r2_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Silo", \
 "result_ermia_r2_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "ERMIA'", \
 "result_ss2pl_r2_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "SS2PL", \
 "result_mocc_r2_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "MOCC", \
 "result_tictoc_r2_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "TicToc", \
 "result_si_r2_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "SI"

set terminal pdfcairo enhanced color size 8cm,8cm
set output "comp_r8_tuple1m.pdf"
plot \
 "result_cicada_r8_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Cicada", \
 "result_silo_r8_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Silo", \
 "result_ermia_r8_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "ERMIA'", \
 "result_ss2pl_r8_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "SS2PL", \
 "result_mocc_r8_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "MOCC", \
 "result_tictoc_r8_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "TicToc", \
 "result_si_r8_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "SI"

set terminal pdfcairo enhanced color size 8cm,8cm
set output "comp_r10_tuple1m.pdf"
plot \
 "result_cicada_r10_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Cicada", \
 "result_silo_r10_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "Silo", \
 "result_ermia_r10_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "ERMIA'", \
 "result_ss2pl_r10_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines title "SS2PL", \
 "result_mocc_r10_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "MOCC", \
 "result_tictoc_r10_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "TicToc", \
 "result_si_r10_tuple1m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "SI"

