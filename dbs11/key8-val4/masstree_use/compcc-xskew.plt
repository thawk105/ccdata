reset

#set xlabel font "Courier,27"
#set ylabel font "Courier,27"
#set xtics   font "Courier,6"
#set key    font "Courier,10"
#set key spacing 1
#
#set xtics  offset 0,-1
#set xlabel offset 0,-2
set ylabel offset -1,0
#
#set tmargin 8
#set lmargin 15
#set bmargin 8
#set rmargin 3

set key outside horiz center box top

#set format y "%2.0t{/Symbol \264}10^{%T}"

set notitle
set grid

set autoscale x
set autoscale y

f(a) = a / 1e6
g(a) = a / 1e2
h(a) = a / 1e3

set format y "%1.0f"
set ylabel "Throughput [MTPS]"
set ytics autofreq

set xlabel "Skew"
set xtics ('0' 0, '0.2' 0.2, '0.4' 0.4, '0.6' 0.6, '0.8' 0.8, '0.99' 0.99)

set terminal pdfcairo enhanced color size 5cm,5cm
set ylabel offset -1,-1
set output "comp_ycsbB_tuple100m_skew0-099_tps.pdf"
plot \
"result_cicada_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "SI", \
"result_silo_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "Silo", \
"result_ss2pl-dlr1_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 12 title "TicToc", \

set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]

set output "comp_ycsbB_tuple100m_skew0-099_ar.pdf"
plot \
"result_cicada_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 4 title "MOCC", \
"result_si_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 6 title "SI", \
"result_silo_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 8 title "Silo", \
"result_ss2pl-dlr1_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 12 title "TicToc", \

set output "comp_ycsbB_tuple100m_skew0-099_cm.pdf"
set ylabel "Cache-Miss Ratio"
plot \
"result_cicada_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "SI", \
"result_silo_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "Silo", \
"result_ss2pl-dlr1_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 12 title "TicToc", \

set xtics ('0.6' 0.6, '0.65' 0.65, '0.7' 0.7, '0.75' 0.75, '0.8' 0.8, '0.85' 0.85)
set format y "%1.0f"
set ylabel "Throughput [MTPS]"
unset autoscale y
set autoscale y
set output "comp_ycsbB_tuple100m_skew06-085_tps.pdf"
plot \
"result_mocc_ycsbB_tuple100m_skew06-085.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "MOCC", \
"result_ss2pl-dlr0_ycsbB_tuple100m_skew06-085.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "2PL-Wait",\
"result_ss2pl_ycsbB_tuple100m_skew06-085.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "2PL-NoWait",\

set ytics 0.2
set ylabel "Abort Ratio" offset 0,0
set format y "%1.1f"
set yrange [0:1]
set output "comp_ycsbB_tuple100m_skew06-085_ar.pdf"
plot \
"result_mocc_ycsbB_tuple100m_skew06-085.dat" using 1:5:6:7 w errorlines pt 1 title "MOCC",\
"result_ss2pl-dlr0_ycsbB_tuple100m_skew06-085.dat" using 1:5:6:7 w errorlines pt 2 title "2PL-Wait",\
"result_ss2pl_ycsbB_tuple100m_skew06-085.dat" using 1:5:6:7 w errorlines pt 3 title "2PL-NoWait", \

set ylabel "Cache-Miss Ratio"
set output "comp_ycsbB_tuple100m_skew06-085_cm.pdf"
plot \
"result_mocc_ycsbB_tuple100m_skew06-085.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "MOCC",\
"result_ss2pl-dlr0_ycsbB_tuple100m_skew06-085.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "2PL-Wait", \
"result_ss2pl_ycsbB_tuple100m_skew06-085.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "2PL-NoWait"

                                                                       
set xtics ('0' 0, '0.2' 0.2, '0.4' 0.4, '0.6' 0.6, '0.8' 0.8, '0.99' 0.99)
set format y "%1.0f"
set ylabel "Throughput [MTPS]"
set autoscale y
set ytics 5
set output "comp_ycsbA_tuple100m_skew0-099_tps.pdf"
plot \
"result_cicada_ycsbA_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbA_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "SI", \
"result_silo_ycsbA_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbA_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 12 title "TicToc", \

set ytics 0.2                                                                       
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]

set output "comp_ycsbA_tuple100m_skew0-099_ar.pdf"
plot \
"result_cicada_ycsbA_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 4 title "MOCC", \
"result_si_ycsbA_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 6 title "SI", \
"result_silo_ycsbA_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 8 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbA_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 12 title "TicToc", \

set output "comp_ycsbA_tuple100m_skew0-099_cm.pdf"
set ylabel "Cache-Miss Ratio"
plot \
"result_cicada_ycsbA_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbA_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "SI", \
"result_silo_ycsbA_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbA_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 12 title "TicToc"

set format y "%1.0f"
set ylabel "Throughput [MTPS]"
unset yrange
#set format y "%2.0t{/Symbol \264}10^{%T}"
unset logscale y
set ytics 2
set output "comp_ycsbA_tuple1k_skew0-099_tps.pdf"
plot \
"result_cicada_ycsbA_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbA_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "SI", \
"result_silo_ycsbA_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbA_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "2PL",\
"result_tictoc_ycsbA_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 12 title "TicToc",\

set ytics 0.2
unset logscale y
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]

set output "comp_ycsbA_tuple1k_skew0-099_ar.pdf"
plot \
"result_cicada_ycsbA_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 4 title "MOCC", \
"result_si_ycsbA_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 6 title "SI", \
"result_silo_ycsbA_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbA_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbA_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 12 title "TicToc", \

set output "comp_ycsbA_tuple1k_skew0-099_cm.pdf"
set ylabel "Cache-Miss Ratio"
plot \
"result_cicada_ycsbA_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbA_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "SI", \
"result_silo_ycsbA_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbA_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbA_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 12 title "TicToc", \

set ytics 10
set format y "%1.0f"
set ylabel "Throughput [MTPS]"
unset yrange
#set format y "%2.0t{/Symbol \264}10^{%T}"
unset logscale y
set output "comp_ycsbB_tuple1k_skew0-099_tps.pdf"
plot \
"result_cicada_ycsbB_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada",\
"result_ermia_ycsbB_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "ERMIA",\
"result_mocc_ycsbB_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "MOCC",\
"result_si_ycsbB_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "SI",\
"result_silo_ycsbB_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "Silo",\
"result_ss2pl_ycsbB_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbB_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 12 title "TicToc", \

set ytics 0.2
unset logscale y
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]
set output "comp_ycsbB_tuple1k_skew0-099_ar.pdf"
plot \
"result_cicada_ycsbB_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 4 title "MOCC", \
"result_si_ycsbB_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 6 title "SI", \
"result_silo_ycsbB_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbB_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbB_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 12 title "TicToc", \

set output "comp_ycsbB_tuple1k_skew0-099_cm.pdf"
set ylabel "Cache-Miss Ratio"
plot \
"result_cicada_ycsbB_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbB_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "SI", \
"result_silo_ycsbB_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbB_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbB_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 12 title "TicToc", \

set ytics 20
set format y "%1.0f"
set ylabel "Throughput [MTPS]"
unset yrange
#set format y "%2.0t{/Symbol \264}10^{%T}"
unset logscale y
set output "comp_ycsbC_tuple1k_skew0-099_tps.pdf"
plot \
"result_cicada_ycsbC_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbC_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbC_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbC_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "SI", \
"result_silo_ycsbC_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbC_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbC_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 12 title "TicToc", \

set ytics 0.2                                                                     
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]

set output "comp_ycsbC_tuple1k_skew0-099_ar.pdf"
plot \
"result_cicada_ycsbC_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbC_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbC_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 4 title "MOCC", \
"result_si_ycsbC_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 6 title "SI", \
"result_silo_ycsbC_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbC_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbC_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 12 title "TicToc", \

set output "comp_ycsbC_tuple1k_skew0-099_cm.pdf"
set ylabel "Cache-Miss Ratio"
plot \
"result_cicada_ycsbC_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbC_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbC_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbC_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "SI", \
"result_silo_ycsbC_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbC_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbC_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 12 title "TicToc", \

set ytics 20
set format y "%1.0f"
set ylabel "Throughput [TPS]"
unset yrange
#set format y "%2.0t{/Symbol \264}10^{%T}"
unset logscale y
set output "comp_r100_tuple1k_skew0-099_tps.pdf"
plot \
"result_cicada_r100_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_r100_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "ERMIA", \
"result_mocc_r100_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "MOCC", \
"result_si_r100_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "SI", \
"result_silo_r100_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "Silo", \
"result_ss2pl_r100_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "2PL", \
"result_tictoc_r100_tuple1k_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 12 title "TicToc", \

set ytics 0.2
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]

set output "comp_r100_tuple1k_skew0-099_ar.pdf"
plot \
"result_cicada_r100_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_r100_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA", \
"result_mocc_r100_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 4 title "MOCC", \
"result_si_r100_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 6 title "SI", \
"result_silo_r100_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 8 title "Silo", \
"result_ss2pl_r100_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 10 title "2PL", \
"result_tictoc_r100_tuple1k_skew0-099.dat" using 1:5:6:7 w errorlines pt 12 title "TicToc", \

set output "comp_r100_tuple1k_skew0-099_cm.pdf"
set ylabel "Cache-Miss Ratio"
plot \
"result_cicada_r100_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_r100_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_r100_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "MOCC", \
"result_si_r100_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "SI", \
"result_silo_r100_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "Silo", \
"result_ss2pl_r100_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "2PL", \
"result_tictoc_r100_tuple1k_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 12 title "TicToc", \

