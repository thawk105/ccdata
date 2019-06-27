reset
#set tics   font "Courier,12"

#set key    font "Courier,12"
set key outside horiz center box width 0.8 top
set key spacing 1.5

set format y "%2.0t{/Symbol \264}10^{%T}"
#set format y "%1.1f"
set notitle

set grid

set autoscale y

#set origin 0.05,0.05
set size square

f(a) = a / 1e3
g(a) = a / 1e2

set tmargin 5
set lmargin 10
set bmargin 5
set rmargin 3
#set ylabel font "Courier,12"
set ylabel offset 0,0
set ytics autofreq

set autoscale x
set xlabel "Value size"
#set xlabel font "Courier,12"
set ylabel offset -2.5,0

set terminal pdfcairo enhanced color size 30cm,30cm
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

set ylabel "Throughput (K tps)"
set autoscale y
set output "comp_ycsbA_tuple100m_skew09_val4-1k_silo&tictoc_tps.pdf"
plot \
"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "TicToc", \
"result_tictoc-nw_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "TicToc-nw", \
"result_tictoc-nw-ea_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "TicToc-nw-ea", \

set ylabel "Extra reads (/sec)"
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

set output "comp_ycsbA_tuple100m_skew09_val4-1k_silo&tictoc_ar.pdf"
plot \
"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 6 title "Silo", \
"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc", \
"result_tictoc-nw_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc-nw", \
"result_tictoc-nw-ea_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc-nw-ea", \

set ylabel "cache-miss rate"
set output "comp_ycsbA_tuple100m_skew09_val4-1k_cm.pdf"
plot \
"result_cicada_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC", \
"result_si_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SI", \
"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc", \

set output "comp_ycsbA_tuple100m_skew09_val4-1k_silo&tictoc_cm.pdf"
plot \
"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \
"result_tictoc-nw_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "TicToc-nw", \
"result_tictoc-nw-ea_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "TicToc-nw-ea", \

set ylabel "Phase rate"
set output "comp_ycsbA_tuple100m_skew09_val4-1k_silo&tictoc_pr.pdf"
plot \
"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:12 w errorlines pt 1 title "Silo, read pahse", \
"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:12 w errorlines pt 2 title "TicToc, read phase", \
"result_tictoc-ea_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:12 w errorlines pt 3 title "TicToc-ea, read phase", \
"result_tictoc-nw_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:12 w errorlines pt 4 title "TicToc-nw, read phase", \
"result_tictoc-nw-ea_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:12 w errorlines pt 6 title "TicToc-nw-ea, read phase", \
"result_silo_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:13 w errorlines pt 8 title "Silo, vali phase", \
"result_tictoc_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:13 w errorlines pt 10 title "TicToc, vali phase", \
"result_tictoc-ea_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:13 w errorlines pt 12 title "TicToc-ea, vali phase", \
"result_tictoc-nw_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:13 w errorlines pt 14 title "TicToc-nw, vali phase", \
"result_tictoc-nw-ea_ycsbA_tuple100m_skew09_val4-1k.dat" using 1:13 w errorlines pt 16 title "TicToc-nw-ea, vali phase", \

