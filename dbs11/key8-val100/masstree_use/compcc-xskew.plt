reset

#set xlabel font "Courier,27"
#set ylabel font "Courier,27"
#set tics   font "Courier,27"
#set key    font "Courier,8"
#set key spacing 1
#
#set xtics  offset 0,-1
#set xlabel offset 0,-2
#set ylabel offset -1,0
#
#set tmargin 8
#set lmargin 20 
#set bmargin 7
#set rmargin 7

f(a) = a / 1e6
g(a) = a / 1e2

set key outside horiz center top box

set autoscale x
#set format x "%1.1t{/Symbol \264}10^{%T}"
#set format x "10^{%T}"
set xlabel "Skew"
set grid

set xtics ('0' 0, '0.2' 0.2, '0.4' 0.4, '0.6' 0.6, '0.8' 0.8, '0.99' 0.99)
set terminal pdfcairo enhanced color size 5cm,5cm
set format y "%1.1f"
set ytics 0.5
set ylabel "Throughput [MTPS]"
set autoscale y
set output "comp_ycsbA_tuple10m_ope16_rmw_skew0-099_th28_tps.pdf"
plot \
"result_cicada_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "SI" ,\
"result_silo_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "Silo",\
"result_ss2pl_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "2PL" ,\
"result_tictoc_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "TicToc"

set ytics 0.2
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]
set output "comp_ycsbA_tuple10m_ope16_rmw_skew0-099_th28_ar.pdf"
plot \
"result_cicada_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:5:6:7 w errorlines pt 4 title "SI" ,\
"result_silo_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:5:6:7 w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc" ,\

set xtics
set ylabel "Cache-Miss Ratio"
set output "comp_ycsbA_tuple10m_ope16_rmw_skew0-099_th28_cr.pdf"
plot \
"result_cicada_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SI" ,\
"result_silo_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbA_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc" ,\

set format y "%1.1f"
set ytics 0.5
set ylabel "Throughput [MTPS]"
set autoscale y
set output "comp_ycsbB_tuple10m_ope16_rmw_skew0-099_th28_tps.pdf"
plot \
"result_cicada_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "SI" ,\
"result_silo_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "Silo",\
"result_ss2pl_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "2PL" ,\
"result_tictoc_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "TicToc"

set ytics 0.2
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]
set output "comp_ycsbB_tuple10m_ope16_rmw_skew0-099_th28_ar.pdf"
plot \
"result_cicada_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:5:6:7 w errorlines pt 4 title "SI" ,\
"result_silo_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:5:6:7 w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc" ,\

set xtics
set ylabel "Cache-Miss Ratio"
set output "comp_ycsbB_tuple10m_ope16_rmw_skew0-099_th28_cr.pdf"
plot \
"result_cicada_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada" ,\
"result_ermia_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA" ,\
"result_mocc_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC" ,\
"result_si_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SI" ,\
"result_silo_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo" ,\
"result_ss2pl_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_ycsbB_tuple10m_ope16_rmw_skew0-099_th28.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc" ,\

