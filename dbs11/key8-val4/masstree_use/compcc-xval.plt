reset

#set tics   font "Courier,27"
#set key    font "Courier,27"
#set ylabel font "Courier,27"
#set xlabel font "Courier,27"
#set key spacing 1.5
#
#set xtics  offset 0,-1
#set xlabel offset 0,-3
#set ylabel offset -10,0
#
#set tmargin 12
#set lmargin 18
#set bmargin 8
#set rmargin 5

set key outside horiz center box width 0.8 top

set format y "%2.0t{/Symbol \264}10^{%T}"
#set format y "%1.1f"

set notitle
set grid

set autoscale y

f(a) = a / 1e3
g(a) = a / 1e2

set ytics autofreq

set autoscale x
set xlabel "Payload Size"

set terminal pdfcairo enhanced color size 10cm,5cm
set ylabel "Throughput (K tps)"
set autoscale y
set output "comp_ycsbA_tuple100m_skew09_val4-1k_tps.pdf"
plot \
"result_cicada_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "MOCC", \
"result_si_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "SI", \
"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "TicToc", \

#set ylabel "Throughput (K tps)"
#set autoscale y
#set output "comp_ycsbA_tuple100m_skew09_val4-1k_silo&tictoc_tps.pdf"
#plot \
#"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Silo", \
#"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "TicToc", \
#"result_tictoc-nw_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "TicToc-nw", \
#"result_tictoc-nw-ea_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "TicToc-nw-ea", \

set ylabel "# extra reads (/sec)"
set autoscale y
set output "comp_ycsbA_tuple100m_skew09_val4-1k_er.pdf"
plot \
"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:11 w errorlines pt 6 title "Silo", \
"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:11 w errorlines pt 10 title "TicToc", \

set ylabel "Abort Rate"
set format y "%1.2f"
unset logscale y
set yrange [0:1]
set output "comp_ycsbA_tuple100m_skew09_val4-1k_ar.pdf"
plot \
"result_cicada_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC", \
"result_si_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 4 title "SI", \
"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc", \

#set output "comp_ycsbA_tuple100m_skew09_val4-1k_silo&tictoc_ar.pdf"
#plot \
#"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 6 title "Silo", \
#"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc", \
#"result_tictoc-nw_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc-nw", \
#"result_tictoc-nw-ea_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc-nw-ea", \

set ylabel "Cache-Miss Rate"
set output "comp_ycsbA_tuple100m_skew09_val4-1k_cm.pdf"
plot \
"result_cicada_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC", \
"result_si_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SI", \
"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc", \

#set output "comp_ycsbA_tuple100m_skew09_val4-1k_silo&tictoc_cm.pdf"
#plot \
#"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
#"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \
#"result_tictoc-nw_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "TicToc-nw", \
#"result_tictoc-nw-ea_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "TicToc-nw-ea", \
#
#set ylabel "Phase Rate"
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

