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

h(a) = a / 1e2
k(a) = a / 1e3
m(a) = a / 1e6

set format y "%1.0f"
set ylabel "Throughput [MTPS]"
set ytics autofreq

set xlabel "Skew"

#set xtics ('0' 0, '0.2' 0.2, '0.4' 0.4, '0.6' 0.6, '0.8' 0.8, '0.99' 0.99)
set terminal pdfcairo enhanced color size 5cm,4cm
set ylabel offset -1,-1
set output "comp_ycsbB_tuple100m_skew0-099_tps.pdf"
plot \
"result_cicada_ycsbB_tuple100m_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple100m_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple100m_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbB_tuple100m_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 6 title "SI", \
"result_silo_ycsbB_tuple100m_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 8 title "Silo", \
"result_ss2pl-dlr1_ycsbB_tuple100m_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbB_tuple100m_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 12 title "TicToc", \

set key center outside nobox top horiz font "Arial,11"
set format y "%1.0f"
set ylabel "Throughput [MTPS]"
set xtics 0.6,0.5,0.9
set xtics (0.6,0.7,0.8,0.9,0.99)
set autoscale y
set ytics 5
set output "comp_ycsbA_tuple100m_skew06-099_tps.pdf"
plot \
"result_cicada_ycsbA_tuple100m_skew06-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple100m_skew06-099.dat"  using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 2 title "ERMIA" , \
"result_mocc_ycsbA_tuple100m_skew06-099.dat"   using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 4 notitle, \
"result_si_ycsbA_tuple100m_skew06-099.dat"     using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 6 notitle, \
"result_silo_ycsbA_tuple100m_skew06-099.dat"   using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 8 notitle, \
"result_2pl_ycsbA_tuple100m_skew06-099.dat"    using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 10 notitle, \
"result_tictoc_ycsbA_tuple100m_skew06-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 12 notitle, \

set format y "10^{%T}"
set ylabel "Throughput [TPS]"
set xtics (0.9,0.95,0.99)
set ytics (100, 1000, 10000, 100000, 1000000, 10000000)
set logscale y
set output "comp_ycsbA_tuple100m_skew09-099_tps.pdf"
plot [0.9:0.99] \
"result_cicada_ycsbA_tuple100m_skew06-099.dat" using 1:2:3:4 w errorlines pt 1 notitle, \
"result_ermia_ycsbA_tuple100m_skew06-099.dat"  using 1:2:3:4 w errorlines pt 2 notitle, \
"result_mocc_ycsbA_tuple100m_skew06-099.dat"   using 1:2:3:4 w errorlines pt 4 title "MOCC", \
"result_si_ycsbA_tuple100m_skew06-099.dat"     using 1:2:3:4 w errorlines pt 6 title "SI", \
"result_silo_ycsbA_tuple100m_skew06-099.dat"   using 1:2:3:4 w errorlines pt 8 notitle, \
"result_2pl_ycsbA_tuple100m_skew06-099.dat"    using 1:2:3:4 w errorlines pt 10 notitle, \
"result_tictoc_ycsbA_tuple100m_skew06-099.dat" using 1:2:3:4 w errorlines pt 12 notitle, \

set format y "%1.0f"
set ylabel "Throughput [MTPS]"
set xtics 0.6,0.5,0.9
set xtics (0.6,0.7,0.8,0.9,0.99)
set ytics (1000, 10000, 100000, 1000000, 10000000, 100000000)
unset logscale y
set output "comp_ycsbB_tuple100m_skew06-099_tps.pdf"
plot \
"result_cicada_ycsbB_tuple100m_skew06-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 1 notitle , \
"result_ermia_ycsbB_tuple100m_skew06-099.dat"  using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 2 notitle , \
"result_mocc_ycsbB_tuple100m_skew06-099.dat"   using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 4 notitle , \
"result_si_ycsbB_tuple100m_skew06-099.dat"     using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 6 notitle , \
"result_silo_ycsbB_tuple100m_skew06-099.dat"   using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 8 title "Silo", \
"result_2pl_ycsbB_tuple100m_skew06-099.dat"    using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbB_tuple100m_skew06-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 12 notitle , \

set format y "10^{%T}"
set ylabel "Throughput [TPS]"
set xtics (0.9,0.95,0.99)
set logscale y
set output "comp_ycsbB_tuple100m_skew09-099_tps.pdf"
plot [0.9:0.99] \
"result_cicada_ycsbB_tuple100m_skew06-099.dat" using 1:2:3:4 w errorlines pt 1  notitle, \
"result_ermia_ycsbB_tuple100m_skew06-099.dat"  using 1:2:3:4 w errorlines pt 2  notitle, \
"result_mocc_ycsbB_tuple100m_skew06-099.dat"   using 1:2:3:4 w errorlines pt 4  notitle, \
"result_si_ycsbB_tuple100m_skew06-099.dat"     using 1:2:3:4 w errorlines pt 6  notitle, \
"result_silo_ycsbB_tuple100m_skew06-099.dat"   using 1:2:3:4 w errorlines pt 8  notitle, \
"result_2pl_ycsbB_tuple100m_skew06-099.dat"    using 1:2:3:4 w errorlines pt 10 notitle, \
"result_tictoc_ycsbB_tuple100m_skew06-099.dat" using 1:2:3:4 w errorlines pt 12 title "TicToc", \

set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]

set xtics ('0' 0, '0.2' 0.2, '0.4' 0.4, '0.6' 0.6, '0.8' 0.8, '0.99' 0.99)
set output "comp_ycsbB_tuple100m_skew0-099_ar.pdf"
plot \
"result_cicada_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 4 title "MOCC", \
"result_si_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 6 title "SI", \
"result_silo_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 8 title "Silo", \
"result_ss2pl-dlr1_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 12 title "TicToc", \

set xtics 0.6,0.5,0.9
set xtics (0.6,0.7,0.8,0.9,0.99)
set output "comp_ycsbA_tuple100m_skew06-099_ar.pdf"
plot \
"result_cicada_ycsbA_tuple100m_skew06-099.dat" using 1:5:6:7 w errorlines pt 1 notitle , \
"result_ermia_ycsbA_tuple100m_skew06-099.dat" using 1:5:6:7 w errorlines pt 2 notitle , \
"result_mocc_ycsbA_tuple100m_skew06-099.dat" using 1:5:6:7 w errorlines pt 4 title "MOCC", \
"result_si_ycsbA_tuple100m_skew06-099.dat" using 1:5:6:7 w errorlines pt 6 title "SI", \
"result_silo_ycsbA_tuple100m_skew06-099.dat" using 1:5:6:7 w errorlines pt 8 notitle , \
"result_2pl_ycsbA_tuple100m_skew06-099.dat" using 1:5:6:7 w errorlines pt 10 notitle , \
"result_tictoc_ycsbA_tuple100m_skew06-099.dat" using 1:5:6:7 w errorlines pt 12 notitle , \

set output "comp_ycsbB_tuple100m_skew06-099_ar.pdf"
plot \
"result_cicada_ycsbB_tuple100m_skew06-099.dat" using 1:5:6:7 w errorlines pt 1 notitle , \
"result_ermia_ycsbB_tuple100m_skew06-099.dat" using 1:5:6:7 w errorlines pt 2 notitle , \
"result_mocc_ycsbB_tuple100m_skew06-099.dat" using 1:5:6:7 w errorlines pt 4 notitle , \
"result_si_ycsbB_tuple100m_skew06-099.dat" using 1:5:6:7 w errorlines pt 6 notitle , \
"result_silo_ycsbB_tuple100m_skew06-099.dat" using 1:5:6:7 w errorlines pt 8 notitle , \
"result_2pl_ycsbB_tuple100m_skew06-099.dat" using 1:5:6:7 w errorlines pt 10 notitle , \
"result_tictoc_ycsbB_tuple100m_skew06-099.dat" using 1:5:6:7 w errorlines pt 12 title "TicToc", \

set xtics ('0' 0, '0.2' 0.2, '0.4' 0.4, '0.6' 0.6, '0.8' 0.8, '0.99' 0.99)
set output "comp_ycsbB_tuple100m_skew0-099_cm.pdf"
set ylabel "Cache-Miss Ratio"
plot \
"result_cicada_ycsbB_tuple100m_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple100m_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple100m_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbB_tuple100m_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 6 title "SI", \
"result_silo_ycsbB_tuple100m_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 8 title "Silo", \
"result_ss2pl-dlr1_ycsbB_tuple100m_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbB_tuple100m_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 12 title "TicToc", \

set xtics ('0.6' 0.6, '0.65' 0.65, '0.7' 0.7, '0.75' 0.75, '0.8' 0.8, '0.85' 0.85)
set format y "%1.0f"
set ylabel "Throughput [MTPS]"
unset autoscale y
set autoscale y
set terminal pdfcairo enhanced color size 5cm,3cm
set key outside nobox center horiz top font "Arial,11"
set ytics 5
set output "comp_ycsbB_tuple100m_skew06-085_tps.pdf"
plot \
"result_mocc_ycsbB_tuple100m_skew06-085.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 1 title "MOCC", \
"result_ss2pl-dlr0_ycsbB_tuple100m_skew06-085.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 2 title "2PL-Wait",\
"result_ss2pl_ycsbB_tuple100m_skew06-085.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 3 notitle ,\

set ytics 0.5
set ylabel "Abort Ratio" offset 0,0
set format y "%1.1f"
set yrange [0:1]
set output "comp_ycsbB_tuple100m_skew06-085_ar.pdf"
plot \
"result_mocc_ycsbB_tuple100m_skew06-085.dat" using 1:5:6:7 w errorlines pt 1 notitle ,\
"result_ss2pl-dlr0_ycsbB_tuple100m_skew06-085.dat" using 1:5:6:7 w errorlines pt 2 notitle,\
"result_ss2pl_ycsbB_tuple100m_skew06-085.dat" using 1:5:6:7 w errorlines pt 3 title "2PL-NoWait", \

set ylabel "Cache-Miss Ratio"
set output "comp_ycsbB_tuple100m_skew06-085_cm.pdf"
plot \
"result_mocc_ycsbB_tuple100m_skew06-085.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 1 notitle ,\
"result_ss2pl-dlr0_ycsbB_tuple100m_skew06-085.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 2 notitle,\
"result_ss2pl_ycsbB_tuple100m_skew06-085.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 3 notitle

                                                                       
set xtics ('0' 0, '0.2' 0.2, '0.4' 0.4, '0.6' 0.6, '0.8' 0.8, '0.99' 0.99)
set format y "%1.0f"
set ylabel "Throughput [MTPS]"
set autoscale y
set ytics 5
set output "comp_ycsbA_tuple100m_skew0-099_tps.pdf"
plot \
"result_cicada_ycsbA_tuple100m_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple100m_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple100m_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbA_tuple100m_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 6 title "SI", \
"result_silo_ycsbA_tuple100m_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 8 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple100m_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbA_tuple100m_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 12 title "TicToc", \

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
"result_cicada_ycsbA_tuple100m_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple100m_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple100m_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbA_tuple100m_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 6 title "SI", \
"result_silo_ycsbA_tuple100m_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 8 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple100m_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbA_tuple100m_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 12 title "TicToc"

set format y "%1.0f"
set ylabel "Throughput [MTPS]"
unset yrange
#set format y "%2.0t{/Symbol \264}10^{%T}"
unset logscale y
set ytics 2
set output "comp_ycsbA_tuple1k_skew0-099_tps.pdf"
plot \
"result_cicada_ycsbA_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbA_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 6 title "SI", \
"result_silo_ycsbA_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbA_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 10 title "2PL",\
"result_tictoc_ycsbA_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 12 title "TicToc",\

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
"result_cicada_ycsbA_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbA_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 6 title "SI", \
"result_silo_ycsbA_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbA_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbA_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 12 title "TicToc", \

set ytics 10
set format y "%1.0f"
set ylabel "Throughput [MTPS]"
unset yrange
#set format y "%2.0t{/Symbol \264}10^{%T}"
unset logscale y
set output "comp_ycsbB_tuple1k_skew0-099_tps.pdf"
plot \
"result_cicada_ycsbB_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 1 title "Cicada",\
"result_ermia_ycsbB_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 2 title "ERMIA",\
"result_mocc_ycsbB_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 4 title "MOCC",\
"result_si_ycsbB_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 6 title "SI",\
"result_silo_ycsbB_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 8 title "Silo",\
"result_ss2pl_ycsbB_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbB_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 12 title "TicToc", \

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
"result_cicada_ycsbB_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbB_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 6 title "SI", \
"result_silo_ycsbB_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbB_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbB_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 12 title "TicToc", \

set ytics 20
set format y "%1.0f"
set ylabel "Throughput [MTPS]"
unset yrange
#set format y "%2.0t{/Symbol \264}10^{%T}"
unset logscale y
set output "comp_ycsbC_tuple1k_skew0-099_tps.pdf"
plot \
"result_cicada_ycsbC_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbC_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbC_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbC_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 6 title "SI", \
"result_silo_ycsbC_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbC_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbC_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 12 title "TicToc", \

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
"result_cicada_ycsbC_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbC_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbC_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbC_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 6 title "SI", \
"result_silo_ycsbC_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbC_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 10 title "2PL", \
"result_tictoc_ycsbC_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 12 title "TicToc", \

set ytics 20
set format y "%1.0f"
set ylabel "Throughput [MTPS]"
unset yrange
#set format y "%2.0t{/Symbol \264}10^{%T}"
unset logscale y
set output "comp_r100_tuple1k_skew0-099_tps.pdf"
plot \
"result_cicada_r100_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_r100_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 2 title "ERMIA", \
"result_mocc_r100_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 4 title "MOCC", \
"result_si_r100_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 6 title "SI", \
"result_silo_r100_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 8 title "Silo", \
"result_ss2pl_r100_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 10 title "2PL", \
"result_tictoc_r100_tuple1k_skew0-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 12 title "TicToc", \

set ylabel "Abort Ratio"
set ytics 0.2
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
"result_cicada_r100_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_r100_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_r100_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 4 title "MOCC", \
"result_si_r100_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 6 title "SI", \
"result_silo_r100_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 8 title "Silo", \
"result_ss2pl_r100_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 10 title "2PL", \
"result_tictoc_r100_tuple1k_skew0-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 12 title "TicToc", \


set xtics 0.7,0.1,0.99
set xtics ('0.7' 0.7, '0.8' 0.8, '0.9' 0.9, '0.99' 0.99)
set ytics 10
set format y "%1.0f"
set ylabel "Throughput [MTPS]"
unset yrange
set output "comp_ycsbB_tuple1m_skew07-099_tps.pdf"
plot \
"result_silo+nowait_ycsbB_tuple1m_skew07-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 1 title "Silo+NoWait", \
"result_tictoc_ycsbB_tuple1m_skew07-099.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 2 title "TicToc", \

set output "comp_ycsbB_tuple1m_skew07-099_er.pdf"
set ylabel "Extra Reads"
set format y "%2.0t{/Symbol \264}10^{%T}"
set ytics auto
plot \
"result_silo+nowait_ycsbB_tuple1m_skew07-099.dat" using 1:11 w lines title "Silo+NoWait", \
"result_tictoc_ycsbB_tuple1m_skew07-099.dat" using 1:11 w lines title "TicToc", \

set ylabel "Abort Ratio"
set ytics 0.2
set format y "%1.1f"
set yrange [0:1]
set output "comp_ycsbB_tuple1m_skew07-099_ar.pdf"
plot \
"result_silo+nowait_ycsbB_tuple1m_skew07-099.dat" using 1:5:6:7 w errorlines pt 1 title "Silo+NoWait", \
"result_tictoc_ycsbB_tuple1m_skew07-099.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \

set output "comp_ycsbB_tuple1m_skew07-099_cr.pdf"
set ylabel "Cache-Miss Ratio"
plot \
"result_silo+nowait_ycsbB_tuple1m_skew07-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 1 title "Silo+NoWait", \
"result_tictoc_ycsbB_tuple1m_skew07-099.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 2 title "TicToc", \

set output "comp_ycsbB_tuple1m_skew07-099_pr.pdf"
set ylabel "Phase Latency Rate"
plot \
"result_silo+nowait_ycsbB_tuple1m_skew07-099.dat" using 1:12 w lines title "Silo+NoWait:R", \
"result_silo+nowait_ycsbB_tuple1m_skew07-099.dat" using 1:13 w lines title "Silo+NoWait:V", \
"result_tictoc_ycsbB_tuple1m_skew07-099.dat" using 1:12 w lines title "TicToc:R", \
"result_tictoc_ycsbB_tuple1m_skew07-099.dat" using 1:13 w lines title "TicToc:V", \

