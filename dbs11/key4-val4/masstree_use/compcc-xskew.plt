reset

set xlabel font "Courier,27"
set ylabel font "Courier,27"
set tics   font "Courier,27"
set key    font "Courier,27"
set key spacing 1

set xtics  offset 0,-1
set xlabel offset 0,-2
set ylabel offset -8,0

set tmargin 8
set lmargin 15
set bmargin 8
set rmargin 3

set key outside horiz center box width 0.8 top

#set format y "%2.0t{/Symbol \264}10^{%T}"
set format y "%1.1f"

set notitle
set grid
set size square

set autoscale x


f(a) = a / 1e6
g(a) = a / 1e2
h(a) = a / 1e3

set autoscale y
set ylabel "Throughput (million tps)"
set ytics autofreq

set xlabel "skew"
set xtics ('0' 0, '0.1' 0.1, '0.2' 0.2, '0.3' 0.3, '0.4' 0.4, '0.5' 0.5, '0.6' 0.6, '0.7' 0.7, '0.8' 0.8, '0.9' 0.9, '0.99' 0.99)

set terminal pdfcairo enhanced color size 20cm,20cm
set output "comp_ycsbB_tuple100m_skew0-099_tps.pdf"
plot \
"result_cicada_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "SI", \
"result_silo_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "SS2PL", \
"result_tictoc_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 12 title "TicToc", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_ycsbB_tuple100m_skew0-099_ar.pdf"
plot \
"result_cicada_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 4 title "MOCC", \
"result_si_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 6 title "SI", \
"result_silo_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 10 title "SS2PL", \
"result_tictoc_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 12 title "TicToc", \

set output "comp_ycsbB_tuple100m_skew0-099_cm.pdf"
set ylabel "cache-miss rate"
plot \
"result_cicada_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "SI", \
"result_silo_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "SS2PL", \
"result_tictoc_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 12 title "TicToc", \

set xtics ('0.6' 0.6, '0.65' 0.65, '0.7' 0.7, '0.75' 0.75, '0.8' 0.8, '0.85' 0.85)
set ylabel "Throughput (million tps)"
unset autoscale y
set autoscale y
set output "comp_ycsbB_tuple100m_skew06-085_tps.pdf"
plot \
"result_mocc_ycsbB_tuple100m_skew06-085.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "MOCC", \
"result_ss2pl-dlr0_ycsbB_tuple100m_skew06-085.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "SS2PL - Normal", \
"result_ss2pl-dlr1_ycsbB_tuple100m_skew06-085.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "SS2PL - No Wait", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]
set output "comp_ycsbB_tuple100m_skew06-085_ar.pdf"
plot \
"result_mocc_ycsbB_tuple100m_skew06-085.dat" using 1:5:6:7 w errorlines pt 1 title "MOCC", \
"result_ss2pl-dlr0_ycsbB_tuple100m_skew06-085.dat" using 1:5:6:7 w errorlines pt 2 title "SS2PL - Normal", \
"result_ss2pl-dlr1_ycsbB_tuple100m_skew06-085.dat" using 1:5:6:7 w errorlines pt 3 title "SS2PL - No Wait", \

set ylabel "cache-miss rate"
set output "comp_ycsbB_tuple100m_skew06-085_cm.pdf"
plot \
"result_mocc_ycsbB_tuple100m_skew06-085.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "MOCC", \
"result_ss2pl-dlr0_ycsbB_tuple100m_skew06-085.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "SS2PL - Normal", \
"result_ss2pl-dlr1_ycsbB_tuple100m_skew06-085.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "SS2PL - No Wait", \

set xtics ('0' 0, '0.1' 0.1, '0.2' 0.2, '0.3' 0.3, '0.4' 0.4, '0.5' 0.5, '0.6' 0.6, '0.7' 0.7, '0.8' 0.8, '0.9' 0.9, '0.99' 0.99)
set ylabel "Throughput (million tps)"
set autoscale y
set terminal pdfcairo enhanced color size 20cm,20cm
set output "comp_ycsbA_tuple100m_skew0-099_tps.pdf"
plot \
"result_cicada_ycsbA_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbA_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "SI", \
"result_silo_ycsbA_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "SS2PL", \
"result_tictoc_ycsbA_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 12 title "TicToc", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_ycsbA_tuple100m_skew0-099_ar.pdf"
plot \
"result_cicada_ycsbA_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 4 title "MOCC", \
"result_si_ycsbA_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 6 title "SI", \
"result_silo_ycsbA_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 8 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 10 title "SS2PL", \
"result_tictoc_ycsbA_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 12 title "TicToc", \

set output "comp_ycsbA_tuple100m_skew0-099_cm.pdf"
set ylabel "cache-miss rate"
plot \
"result_cicada_ycsbA_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbA_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "SI", \
"result_silo_ycsbA_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "SS2PL", \
"result_tictoc_ycsbA_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 12 title "TicToc", \

set ylabel "Throughput (K tps)"
unset yrange
set format y "%2.0t{/Symbol \264}10^{%T}"
set logscale y
set terminal pdfcairo enhanced color size 20cm,20cm
set output "comp_ycsbA_tuple1k_skew0-099_tps.pdf"
plot \
"result_cicada_ycsbA_tuple1k_skew0-099.dat" using 1:(h($2)):(h($3)):(h($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple1k_skew0-099.dat" using 1:(h($2)):(h($3)):(h($4)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple1k_skew0-099.dat" using 1:(h($2)):(h($3)):(h($4)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbA_tuple1k_skew0-099.dat" using 1:(h($2)):(h($3)):(h($4)) w errorlines pt 6 title "SI", \
"result_silo_ycsbA_tuple1k_skew0-099.dat" using 1:(h($2)):(h($3)):(h($4)) w errorlines pt 8 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple1k_skew0-099.dat" using 1:(h($2)):(h($3)):(h($4)) w errorlines pt 10 title "SS2PL", \
"result_tictoc_ycsbA_tuple1k_skew0-099.dat" using 1:(h($2)):(h($3)):(h($4)) w errorlines pt 12 title "TicToc", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_ycsbA_tuple1k_skew0-099_ar.pdf"
plot \
"result_cicada_ycsbA_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 4 title "MOCC", \
"result_si_ycsbA_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 6 title "SI", \
"result_silo_ycsbA_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 8 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 10 title "SS2PL", \
"result_tictoc_ycsbA_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 12 title "TicToc", \

set output "comp_ycsbA_tuple1k_skew0-099_cm.pdf"
set ylabel "cache-miss rate"
plot \
"result_cicada_ycsbA_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbA_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "SI", \
"result_silo_ycsbA_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "SS2PL", \
"result_tictoc_ycsbA_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 12 title "TicToc", \

