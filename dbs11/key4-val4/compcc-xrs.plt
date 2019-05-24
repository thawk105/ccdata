set tics   font "Courier,17"
set key    font "Courier,17"
set key spacing 1.3

set lmargin 12
set rmargin 15
set bmargin 4

set key outside horiz center top box

#set format y "%2.0t{/Symbol \264}10^{%T}"
set format y "%1.1f"
set notitle

set grid

set logscale x
set autoscale y

f(a) = a / 1e6
g(a) = a / 1e2

set ylabel "Throughput (M tps)"
set ylabel font "Courier,17"
set ylabel offset -2.5,0
set ytics autofreq

unset multiplot
set terminal pdfcairo enhanced color size 12cm,12cm
set output "comp_tuple100-10m_ycsbA.pdf"
set multiplot

set tmargin screen 0.8
set bmargin screen 0.5
plot \
"result_silo_ycsbA_tuple100-10m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "Silo", \
"result_ss2pl_ycsbA_tuple100-10m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "SS2PL", \
"result_mocc_ycsbA_tuple100-10m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "MOCC", \
"result_tictoc_ycsbA_tuple100-10m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "TicToc", \
"result_cicada_ycsbA_tuple100-10m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple100-10m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "ERMIA'", \
"result_si_ycsbA_tuple100-10m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "SI", \

set ylabel "Abort Rate"
set ytics offset -0.5,0
set format y "%1.2f"
set yrange [0:1]

unset key
set tmargin screen 0.4
set bmargin screen 0.1
plot \
"result_silo_ycsbA_tuple100-10m.dat" using 1:5:6:7 w errorlines pt 2 title "Silo", \
"result_ss2pl_ycsbA_tuple100-10m.dat" using 1:5:6:7 w errorlines pt 4 title "SS2PL", \
"result_mocc_ycsbA_tuple100-10m.dat" using 1:5:6:7 w errorlines pt 6 title "MOCC", \
"result_tictoc_ycsbA_tuple100-10m.dat" using 1:5:6:7 w errorlines pt 8 title "TicToc", \
"result_cicada_ycsbA_tuple100-10m.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple100-10m.dat" using 1:5:6:7 w errorlines pt 3 title "ERMIA'", \
"result_si_ycsbA_tuple100-10m.dat" using 1:5:6:7 w errorlines pt 10 title "SI", \


set xtics
set xlabel "Database size"
set xlabel font "Courier,17"
set xlabel offset 0,0.3

#set ylabel "Cache-miss rate"
#
#set tmargin screen 0.3
#set bmargin screen 0.1
#plot \
#"result_silo_ycsbA_tuple100-10m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "Silo", \
#"result_ss2pl_ycsbA_tuple100-10m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SS2PL", \
#"result_mocc_ycsbA_tuple100-10m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "MOCC", \
#"result_tictoc_ycsbA_tuple100-10m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "TicToc", \
#"result_cicada_ycsbA_tuple100-10m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
#"result_ermia_ycsbA_tuple100-10m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "ERMIA'", \
#"result_si_ycsbA_tuple100-10m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "SI", \

unset multiplot
unset yrange
set key outside horiz center top box
set ylabel "Throughput (M tps)"
set output "comp_tuple100-10m_ycsbA_skew099.pdf"
set multiplot

set tmargin screen 0.8
set bmargin screen 0.5
plot \
"result_silo_ycsbA_skew099_tuple100-10m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "Silo", \
"result_ss2pl_ycsbA_skew099_tuple100-10m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "SS2PL", \
"result_mocc_ycsbA_skew099_tuple100-10m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "MOCC", \
"result_tictoc_ycsbA_skew099_tuple100-10m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "TicToc", \
"result_cicada_ycsbA_skew099_tuple100-10m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_skew099_tuple100-10m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "ERMIA'", \
"result_si_ycsbA_skew099_tuple100-10m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "SI", \

set ylabel "Abort Rate"
set ytics offset -0.5,0
set format y "%1.2f"
set yrange [0:1]

unset key
set tmargin screen 0.4
set bmargin screen 0.1
plot \
"result_silo_ycsbA_skew099_tuple100-10m.dat" using 1:5:6:7 w errorlines pt 2 title "Silo", \
"result_ss2pl_ycsbA_skew099_tuple100-10m.dat" using 1:5:6:7 w errorlines pt 4 title "SS2PL", \
"result_mocc_ycsbA_skew099_tuple100-10m.dat" using 1:5:6:7 w errorlines pt 6 title "MOCC", \
"result_tictoc_ycsbA_skew099_tuple100-10m.dat" using 1:5:6:7 w errorlines pt 8 title "TicToc", \
"result_cicada_ycsbA_skew099_tuple100-10m.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_skew099_tuple100-10m.dat" using 1:5:6:7 w errorlines pt 3 title "ERMIA'", \
"result_si_ycsbA_skew099_tuple100-10m.dat" using 1:5:6:7 w errorlines pt 10 title "SI", \


#set xtics
#set xlabel "Database size"
#set xlabel font "Courier,17"
#set xlabel offset 0,0.3
#
#set ylabel "Cache-miss rate"
#
#set tmargin screen 0.3
#set bmargin screen 0.1
#plot \
#"result_cicada_ycsbA_skew099_tuple100-10m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
#"result_silo_ycsbA_skew099_tuple100-10m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "Silo", \
#"result_ermia_ycsbA_skew099_tuple100-10m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "ERMIA'", \
#"result_ss2pl_ycsbA_skew099_tuple100-10m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SS2PL", \
#"result_mocc_ycsbA_skew099_tuple100-10m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "MOCC", \
#"result_tictoc_ycsbA_skew099_tuple100-10m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "TicToc", \
#"result_si_ycsbA_skew099_tuple100-10m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "SI", \

unset multiplot
set terminal pdfcairo enhanced color size 12cm,12cm
set tmargin -9.0
set format x "%1.0t{/Symbol \264}10^{%T}"
unset yrange
set key outside horiz center top box
set ylabel "Throughput (M tps)"
set output "comp_tuple1000-100m_ycsbB_tps.pdf"
plot \
"result_silo_ycsbB_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "Silo", \
"result_ss2pl_ycsbB_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "SS2PL", \
"result_mocc_ycsbB_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "MOCC", \
"result_tictoc_ycsbB_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "TicToc", \
"result_cicada_ycsbB_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "ERMIA'", \
"result_si_ycsbB_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "SI", \

set ylabel "Abort Rate"
set ytics offset -0.5,0
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple1000-100m_ycsbB_ar.pdf"
plot \
"result_silo_ycsbB_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 2 title "Silo", \
"result_ss2pl_ycsbB_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 4 title "SS2PL", \
"result_mocc_ycsbB_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 6 title "MOCC", \
"result_tictoc_ycsbB_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 8 title "TicToc", \
"result_cicada_ycsbB_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 3 title "ERMIA'", \
"result_si_ycsbB_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 10 title "SI", \


set xtics
set xlabel "Database size"
set xlabel font "Courier,17"
set xlabel offset 0,0.3

set ylabel "Cache-miss rate"

set output "comp_tuple1000-100m_ycsbB_ca.pdf"
plot \
"result_cicada_ycsbB_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_silo_ycsbB_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "Silo", \
"result_ermia_ycsbB_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "ERMIA'", \
"result_ss2pl_ycsbB_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SS2PL", \
"result_mocc_ycsbB_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "MOCC", \
"result_tictoc_ycsbB_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "TicToc", \
"result_si_ycsbB_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "SI", \

