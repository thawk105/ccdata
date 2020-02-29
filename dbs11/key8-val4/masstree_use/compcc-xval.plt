reset

#set tics   font "Courier,27"
#set key    font "Courier,27"
#set ylabel font "Courier,27"
#set xlabel font "Courier,27"
#set key spacing 1.5
#
#set xtics  offset 0,-1
#set xlabel offset 0,-3
#set ylabel offset -1,0
#
#set tmargin 12
#set lmargin 18
#set bmargin 8
#set rmargin 5

#set format y "%1.1f"

set notitle
set grid

set autoscale y

k(a) = a / 1e3
h(a) = a / 1e2
m(a) = a / 1e6

set ytics autofreq

set key center out top box horiz 
set autoscale x
set xlabel "Payload Size"
set xtics ('4' 4, '200' 200, '400' 400, '600' 600, '800' 800, '1000' 1000)
set terminal pdfcairo enhanced color size 5cm,3cm
set key nobox inside right top vert
set ylabel offset 0,-1
set ylabel "Throughput [MTPS]"
#set format y "%2.1t{/Symbol \264}10^{%T}"
set autoscale y
set ytics 0.5
set output "comp_ycsbA_tuple100m_skew09_val4-1k_tps.pdf"
plot \
"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 2 title "TicToc", \
#"result_ss2pl_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 8 title "2PL", \
#"result_cicada_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 1 title "Cicada", \
#"result_ermia_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 2 title "ERMIA", \
#"result_mocc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 3 title "MOCC", \
#"result_si_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 4 title "SI", \

set output "comp_ycsbB_tuple1m_skew099_val4-1k_tps.pdf"
plot \
"result_silo+nowait_ycsbB_tuple1m_skew099_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 1 title "Silo+NoWait", \
"result_tictoc_ycsbB_tuple1m_skew099_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 2 title "TicToc"

set output "comp_ycsbB_tuple100m_skew09_val4-1k_tps.pdf"
plot \
"result_cicada_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 3 title "MOCC",\
"result_si_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 4 title "SI",\
"result_silo_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 6 title "Silo",\
"result_ss2pl_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 8 title "2PL",\
"result_tictoc_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 10 title "TicToc",\

set logscale x
set output "comp_ycsbB_tuple1m_val10-100k_tps.pdf"
plot \
"result_cicada_ycsbB_tuple1m_val10-100k.dat" using 1:2:3:4 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple1m_val10-100k.dat" using 1:2:3:4 w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple1m_val10-100k.dat" using 1:2:3:4 w errorlines pt 3 title "MOCC", \
"result_si_ycsbB_tuple1m_val10-100k.dat" using 1:2:3:4 w errorlines pt 4 title "SI", \
"result_silo_ycsbB_tuple1m_val10-100k.dat" using 1:2:3:4 w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbB_tuple1m_val10-100k.dat" using 1:2:3:4 w errorlines pt 8 title "2PL", \
"result_tictoc_ycsbB_tuple1m_val10-100k.dat" using 1:2:3:4 w errorlines pt 10 title "TicToc", \

unset logscale x

set output "comp_ycsbC_tuple100m_skew09_val4-1k_tps.pdf"
plot \
"result_cicada_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 1 title "Cicada",\
"result_ermia_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 2 title "ERMIA",\
"result_mocc_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 3 title "MOCC", \
"result_si_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 4 title "SI", \
"result_silo_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 6 title "Silo",\
"result_ss2pl_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 8 title "2PL",\
"result_tictoc_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 10 title "TicToc",\

#set ylabel "Throughput (K tps)"
#set autoscale y
#set output "comp_ycsbA_tuple100m_skew09_val4-1k_silo&tictoc_tps.pdf"
#plot \
#"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(k($2)):(k($3)):(k($4)) w errorlines pt 1 title "Silo", \
#"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(k($2)):(k($3)):(k($4)) w errorlines pt 2 title "TicToc", \
#"result_tictoc-nw_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(k($2)):(k($3)):(k($4)) w errorlines pt 3 title "TicToc-nw", \
#"result_tictoc-nw-ea_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(k($2)):(k($3)):(k($4)) w errorlines pt 4 title "TicToc-nw-ea", \

set ylabel "Extra Reads [M/SEC]"
set autoscale y
set ytics 20
set key at graph 1,0.95
set output "comp_ycsbA_tuple100m_skew09_val4-1k_er.pdf"
plot \
"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(m($11)) w errorlines pt 1 title "Silo", \
"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(m($11)) w errorlines pt 2 title "TicToc", \

set output "comp_ycsbB_tuple1m_skew099_val4-1k_er.pdf"
plot \
"result_silo+nowait_ycsbB_tuple1m_skew099_val4-1k.dat" using 1:(m($11)) w errorlines pt 1 title "Silo+NoWait", \
"result_tictoc_ycsbB_tuple1m_skew099_val4-1k.dat" using 1:(m($11)) w errorlines pt 2 title "TicToc"

set ylabel "Abort Ratio"
set format y "%1.1f"
unset logscale y
set yrange [0:1]
unset logscale x
set output "comp_ycsbA_tuple100m_skew09_val4-1k_ar.pdf"
plot \
"result_cicada_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC", \
"result_si_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 4 title "SI", \
"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 8 title "2PL", \
"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc", \

set output "comp_ycsbB_tuple100m_skew09_val4-1k_ar.pdf"
plot \
"result_cicada_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC", \
"result_si_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 4 title "SI", \
"result_silo_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 8 title "2PL", \
"result_tictoc_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc", \

set output "comp_ycsbB_tuple1m_skew099_val4-1k_ar.pdf"
plot \
"result_silo+nowait_ycsbB_tuple1m_skew099_val4-1k.dat" using 1:5:6:7 w errorlines pt 1 title "Silo+NoWait", \
"result_tictoc_ycsbB_tuple1m_skew099_val4-1k.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc"

set logscale x
set output "comp_ycsbB_tuple1m_val10-100k_ar.pdf"
plot \
"result_cicada_ycsbB_tuple1m_val10-100k.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple1m_val10-100k.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple1m_val10-100k.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC", \
"result_si_ycsbB_tuple1m_val10-100k.dat" using 1:5:6:7 w errorlines pt 4 title "SI", \
"result_silo_ycsbB_tuple1m_val10-100k.dat" using 1:5:6:7 w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbB_tuple1m_val10-100k.dat" using 1:5:6:7 w errorlines pt 8 title "2PL", \
"result_tictoc_ycsbB_tuple1m_val10-100k.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc", \

unset logscale x

set output "comp_ycsbC_tuple100m_skew09_val4-1k_ar.pdf"
plot \
"result_cicada_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC", \
"result_si_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 4 title "SI", \
"result_silo_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 8 title "2PL", \
"result_tictoc_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc", \

#set output "comp_ycsbA_tuple100m_skew09_val4-1k_silo&tictoc_ar.pdf"
#plot \
#"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 6 title "Silo", \
#"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc", \
#"result_tictoc-nw_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc-nw", \
#"result_tictoc-nw-ea_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc-nw-ea", \

set ylabel "Cache-Miss Ratio"
set output "comp_ycsbA_tuple100m_skew09_val4-1k_cm.pdf"
plot \
"result_cicada_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 3 title "MOCC", \
"result_si_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 4 title "SI", \
"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 8 title "2PL", \
"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 10 title "TicToc", \

set output "comp_ycsbB_tuple100m_skew09_val4-1k_cm.pdf"
plot \
"result_cicada_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 3 title "MOCC", \
"result_si_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 4 title "SI", \
"result_silo_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 8 title "2PL", \
"result_tictoc_ycsbB_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 10 title "TicToc", \

set logscale x
set output "comp_ycsbB_tuple1m_val10-100k_cr.pdf"
plot \
"result_cicada_ycsbB_tuple1m_val10-100k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple1m_val10-100k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple1m_val10-100k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 3 title "MOCC", \
"result_si_ycsbB_tuple1m_val10-100k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 4 title "SI", \
"result_silo_ycsbB_tuple1m_val10-100k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbB_tuple1m_val10-100k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 8 title "2PL", \
"result_tictoc_ycsbB_tuple1m_val10-100k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 10 title "TicToc", \

unset logscale x
set ytics 0.2
set output "comp_ycsbC_tuple100m_skew09_val4-1k_cm.pdf"
plot \
"result_cicada_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 1 title "Cicada",\
"result_ermia_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 2 title "ERMIA",\
"result_mocc_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 3 title "MOCC",\
"result_si_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 4 title "SI",\
"result_silo_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 8 title "2PL", \
"result_tictoc_ycsbC_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 10 title "TicToc", \

#set output "comp_ycsbA_tuple100m_skew09_val4-1k_silo&tictoc_cm.pdf"
#plot \
#"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 1 title "Silo", \
#"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 2 title "TicToc", \
#"result_tictoc-nw_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 3 title "TicToc-nw", \
#"result_tictoc-nw-ea_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 4 title "TicToc-nw-ea", \
#
#set ylabel "Phase Ratio"
#set output "comp_ycsbA_tuple100m_skew09_val4-1k_silo&tictoc_pr.pdf"
#plot \
#"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:12 w errorlines pt 1 title "Silo, read latency", \
#"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:12 w errorlines pt 2 title "TicToc, read latency", \
#"result_tictoc-ea_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:12 w errorlines pt 3 title "TicToc-ea, read latency", \
#"result_tictoc-nw_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:12 w errorlines pt 4 title "TicToc-nw, read latency", \
#"result_tictoc-nw-ea_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:12 w errorlines pt 6 title "TicToc-nw-ea, read latency", \
#"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:13 w errorlines pt 8 title "Silo, vali latency", \
#"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:13 w errorlines pt 10 title "TicToc, vali latency", \
#"result_tictoc-ea_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:13 w errorlines pt 12 title "TicToc-ea, vali latency", \
#"result_tictoc-nw_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:13 w errorlines pt 14 title "TicToc-nw, vali latency", \
#"result_tictoc-nw-ea_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:13 w errorlines pt 16 title "TicToc-nw-ea, vali latency", \

set output "comp_ycsbB_tuple1m_skew099_val4-1k_cr.pdf"
plot \
"result_silo+nowait_ycsbB_tuple1m_skew099_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 1 title "Silo+NoWait", \
"result_tictoc_ycsbB_tuple1m_skew099_val4-1k.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 2 title "TicToc"

