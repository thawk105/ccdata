set xlabel "Number of threads"
set xlabel offset 0,0.3

set ylabel "Throughput (tps)"
set ylabel offset -2.5,0

set xlabel font "Courier,17"
set ylabel font "Courier,17"
set tics   font "Courier,17"
set key    font "Courier,17"
set key spacing 1.5

set lmargin 12
set bmargin 4

set key horiz outside center top box

set format y "%2.0t{/Symbol \264}10^{%T}"
set notitle

set autoscale y
set ytics autofreq
set grid

set terminal pdfcairo enhanced color size 6cm,6cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple200_r0.pdf"
plot "result_cicada_r0_tuple200.dat" w errorlines title "Cicada", "result_silo_r0_tuple200.dat" w errorlines title "Silo", "result_ermia_r0_tuple200.dat" w errorlines title "ERMIA", "result_ss2pl_r0_tuple200.dat" w errorlines title "SS2PL", "result_mocc_r0_tuple200.dat" w errorlines pt 6 title "MOCC", "result_tictoc_r0_tuple200.dat" w errorlines pt 8 title "TicToc",

set terminal pdfcairo enhanced color size 6cm,6cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple200_r2.pdf"
plot "result_cicada_r2_tuple200.dat" w errorlines title "Cicada", "result_silo_r2_tuple200.dat" w errorlines title "Silo", "result_ermia_r2_tuple200.dat" w errorlines title "ERMIA", "result_ss2pl_r2_tuple200.dat" w errorlines title "SS2PL", "result_mocc_r2_tuple200.dat" w errorlines pt 6 title "MOCC", "result_tictoc_r2_tuple200.dat" w errorlines pt 8 title "TicToc",

set terminal pdfcairo enhanced color size 6cm,6cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple200_r5.pdf"
plot "result_cicada_r5_tuple200.dat" w errorlines title "Cicada", "result_silo_r5_tuple200.dat" w errorlines title "Silo", "result_ermia_r5_tuple200.dat" w errorlines title "ERMIA", "result_ss2pl_r5_tuple200.dat" w errorlines title "SS2PL", "result_mocc_r5_tuple200.dat" w errorlines pt 6 title "MOCC", "result_tictoc_r5_tuple200.dat" w errorlines pt 8 title "TicToc",

set terminal pdfcairo enhanced color size 6cm,6cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple200_r8.pdf"
plot "result_cicada_r8_tuple200.dat" w errorlines title "Cicada", "result_silo_r8_tuple200.dat" w errorlines title "Silo", "result_ermia_r8_tuple200.dat" w errorlines title "ERMIA", "result_ss2pl_r8_tuple200.dat" w errorlines title "SS2PL", "result_mocc_r8_tuple200.dat" w errorlines pt 6 title "MOCC", "result_tictoc_r8_tuple200.dat" w errorlines pt 8 title "TicToc",

set terminal pdfcairo enhanced color size 6cm,6cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple200_r10.pdf"
plot "result_cicada_r10_tuple200.dat" w errorlines title "Cicada", "result_silo_r10_tuple200.dat" w errorlines title "Silo", "result_ermia_r10_tuple200.dat" w errorlines title "ERMIA", "result_ss2pl_r10_tuple200.dat" w errorlines title "SS2PL", "result_mocc_r10_tuple200.dat" w errorlines pt 6 title "MOCC", "result_tictoc_r10_tuple200.dat" w errorlines pt 8 title "TicToc",

unset key

set terminal pdfcairo enhanced color size 6cm,5cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple1k_r0.pdf"
plot "result_cicada_r0_tuple1k.dat" w errorlines title "Cicada", "result_silo_r0_tuple1k.dat" w errorlines title "Silo", "result_ermia_r0_tuple1k.dat" w errorlines title "ERMIA", "result_ss2pl_r0_tuple1k.dat" w errorlines title "SS2PL", "result_mocc_r0_tuple1k.dat" w errorlines pt 6 title "MOCC", "result_tictoc_r0_tuple1k.dat" w errorlines pt 8 title "TicToc",

set terminal pdfcairo enhanced color size 6cm,5cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple1k_r2.pdf"
plot "result_cicada_r2_tuple1k.dat" w errorlines title "Cicada", "result_silo_r2_tuple1k.dat" w errorlines title "Silo", "result_ermia_r2_tuple1k.dat" w errorlines title "ERMIA", "result_ss2pl_r2_tuple1k.dat" w errorlines title "SS2PL", "result_mocc_r2_tuple1k.dat" w errorlines pt 6 title "MOCC", "result_tictoc_r2_tuple1k.dat" w errorlines pt 8 title "TicToc",

set terminal pdfcairo enhanced color size 6cm,5cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple1k_r5.pdf"
plot "result_cicada_r5_tuple1k.dat" w errorlines title "Cicada", "result_silo_r5_tuple1k.dat" w errorlines title "Silo", "result_ermia_r5_tuple1k.dat" w errorlines title "ERMIA", "result_ss2pl_r5_tuple1k.dat" w errorlines title "SS2PL", "result_mocc_r5_tuple1k.dat" w errorlines pt 6 title "MOCC", "result_tictoc_r5_tuple1k.dat" w errorlines pt 8 title "TicToc",

set terminal pdfcairo enhanced color size 6cm,5cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple1k_r8.pdf"
plot "result_cicada_r8_tuple1k.dat" w errorlines title "Cicada", "result_silo_r8_tuple1k.dat" w errorlines title "Silo", "result_ermia_r8_tuple1k.dat" w errorlines title "ERMIA", "result_ss2pl_r8_tuple1k.dat" w errorlines title "SS2PL", "result_mocc_r8_tuple1k.dat" w errorlines pt 6 title "MOCC", "result_tictoc_r8_tuple1k.dat" w errorlines pt 8 title "TicToc",

set terminal pdfcairo enhanced color size 6cm,5cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple1k_r10.pdf"
plot "result_cicada_r10_tuple1k.dat" w errorlines title "Cicada", "result_silo_r10_tuple1k.dat" w errorlines title "Silo", "result_ermia_r10_tuple1k.dat" w errorlines title "ERMIA", "result_ss2pl_r10_tuple1k.dat" w errorlines title "SS2PL", "result_mocc_r10_tuple1k.dat" w errorlines pt 6 title "MOCC", "result_tictoc_r10_tuple1k.dat" w errorlines pt 8 title "TicToc",

set terminal pdfcairo enhanced color size 6cm,5cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple1m_r0.pdf"
plot "result_cicada_r0_tuple1m.dat" w errorlines title "Cicada", "result_silo_r0_tuple1m.dat" w errorlines title "Silo", "result_ermia_r0_tuple1m.dat" w errorlines title "ERMIA", "result_ss2pl_r0_tuple1m.dat" w errorlines title "SS2PL", "result_mocc_r0_tuple1m.dat" w errorlines pt 6 title "MOCC", "result_tictoc_r0_tuple1m.dat" w errorlines pt 8 title "TicToc",

set terminal pdfcairo enhanced color size 6cm,5cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple1m_r2.pdf"
plot "result_cicada_r2_tuple1m.dat" w errorlines title "Cicada", "result_silo_r2_tuple1m.dat" w errorlines title "Silo", "result_ermia_r2_tuple1m.dat" w errorlines title "ERMIA", "result_ss2pl_r2_tuple1m.dat" w errorlines title "SS2PL", "result_mocc_r2_tuple1m.dat" w errorlines pt 6 title "MOCC", "result_tictoc_r2_tuple1m.dat" w errorlines pt 8 title "TicToc",

set terminal pdfcairo enhanced color size 6cm,5cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple1m_r5.pdf"
plot "result_cicada_r5_tuple1m.dat" w errorlines title "Cicada", "result_silo_r5_tuple1m.dat" w errorlines title "Silo", "result_ermia_r5_tuple1m.dat" w errorlines title "ERMIA", "result_ss2pl_r5_tuple1m.dat" w errorlines title "SS2PL", "result_mocc_r5_tuple1m.dat" w errorlines pt 6 title "MOCC", "result_tictoc_r5_tuple1m.dat" w errorlines pt 8 title "TicToc",

set terminal pdfcairo enhanced color size 6cm,5cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple1m_r8.pdf"
plot "result_cicada_r8_tuple1m.dat" w errorlines title "Cicada", "result_silo_r8_tuple1m.dat" w errorlines title "Silo", "result_ermia_r8_tuple1m.dat" w errorlines title "ERMIA", "result_ss2pl_r8_tuple1m.dat" w errorlines title "SS2PL", "result_mocc_r8_tuple1m.dat" w errorlines pt 6 title "MOCC", "result_tictoc_r8_tuple1m.dat" w errorlines pt 8 title "TicToc",

set terminal pdfcairo enhanced color size 6cm,5cm
set output "comp_cicada_silo_ermia_ss2pl_mocc_tictoc_tuple1m_r10.pdf"
plot "result_cicada_r10_tuple1m.dat" w errorlines title "Cicada", "result_silo_r10_tuple1m.dat" w errorlines title "Silo", "result_ermia_r10_tuple1m.dat" w errorlines title "ERMIA", "result_ss2pl_r10_tuple1m.dat" w errorlines title "SS2PL", "result_mocc_r10_tuple1m.dat" w errorlines pt 6 title "MOCC", "result_tictoc_r10_tuple1m.dat" w errorlines pt 8 title "TicToc",

