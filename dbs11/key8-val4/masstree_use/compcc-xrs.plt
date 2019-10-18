reset

#set xlabel font "Courier,27"
#set ylabel font "Courier,27"
#set tics   font "Courier,27"
#set key    font "Courier,8"
#set key spacing 1
#
#set xtics  offset 0,-1
#set xlabel offset 0,-2
set ylabel offset -1,0
#
#set tmargin 8
#set lmargin 20 
#set bmargin 7
#set rmargin 7

f(a) = a / 1e6
g(a) = a / 1e2

set key outside horiz center top box

set logscale x
#set format x "%1.0t{/Symbol \264}10^{%T}"
set format x "10^{%T}"
set xlabel "# Records"

set grid

set terminal pdfcairo enhanced color size 5cm,4cm
#set format y "%1.1t{/Symbol \264}10^{%T}"
set ylabel "Throughput [MTPS]"
set autoscale y
set ytics 10
set output "comp_tuple1k-1g_ycsbA_tps.pdf"
plot \
"result_cicada_ycsbA_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbA_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbA_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbA_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "SI" ,\
"result_silo_ycsbA_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbA_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbA_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "TicToc" ,\

set ytics 20
set output "comp_tuple1k-1g_ycsbB_tps.pdf"
plot \
"result_cicada_ycsbB_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbB_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbB_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbB_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "SI" ,\
"result_silo_ycsbB_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbB_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbB_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "TicToc" ,\

set output "comp_tuple1k-1g_ycsbC_tps.pdf"
plot \
"result_cicada_ycsbC_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbC_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbC_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbC_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "SI" ,\
"result_silo_ycsbC_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbC_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbC_tuple1k-1g.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "TicToc" ,\

set ytics 0,0.2,1
set ylabel offset 0,0
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]

set output "comp_tuple1k-1g_ycsbA_ar.pdf"
plot \
"result_cicada_ycsbA_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbA_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbA_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbA_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 4 title "SI" ,\
"result_silo_ycsbA_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbA_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbA_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc" ,\

set output "comp_tuple1k-1g_ycsbB_ar.pdf"
plot \
"result_cicada_ycsbB_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbB_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbB_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbB_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 4 title "SI" ,\
"result_silo_ycsbB_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbB_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbB_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc" ,\

set output "comp_tuple1k-1g_ycsbC_ar.pdf"
plot \
"result_cicada_ycsbC_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbC_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbC_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbC_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 4 title "SI" ,\
"result_silo_ycsbC_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbC_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbC_tuple1k-1g.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc" ,\

set xtics
set ylabel "Cache-Miss Ratio"

set output "comp_tuple1k-1g_ycsbA_ca.pdf"
plot \
"result_cicada_ycsbA_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbA_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbA_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbA_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SI" ,\
"result_silo_ycsbA_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbA_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbA_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc" ,\

set output "comp_tuple1k-1g_ycsbB_ca.pdf"
plot \
"result_cicada_ycsbB_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbB_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbB_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbB_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SI" ,\
"result_silo_ycsbB_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbB_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbB_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc" ,\

set output "comp_tuple1k-1g_ycsbC_ca.pdf"
plot \
"result_cicada_ycsbC_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbC_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbC_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbC_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SI" ,\
"result_silo_ycsbC_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbC_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbC_tuple1k-1g.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc" ,\

