reset

#set xlabel font "Courier,27"
#set ylabel font "Courier,27"
#set tics   font "Courier,27"
#set key    font "Courier,8"
#set key spacing 1
#
#set xtics  offset 0,-1
#set xlabel offset 0,-2
set ylabel offset -0.6,-1
#
#set tmargin 8
#set lmargin 20 
#set bmargin 7
#set rmargin 7

m(a) = a / 1e6
h(a) = a / 1e2

set key right bottom

set autoscale x
#set format x "%1.1t{/Symbol \264}10^{%T}"
#set format x "10^{%T}"
set xlabel "# Threads"
set xtics 28, 28, 224
set grid

set ytics 30
set terminal pdfcairo enhanced color size 5cm,5cm
set format y "%1.0f"
set ylabel "Throughput [MTPS]"
set autoscale y
set output "comp_ycsbC_tuple50_tps.pdf"
plot \
"result_silo_ycsbC_tuple50.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 1 title "Silo" ,\
"result_mocc_ycsbC_tuple50.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 2 title "MOCC" ,\

set ytics auto
set xtics auto
set key outside top box center
set output "comp_ycsbB_tuple1m_skew099_th14-224_tps.pdf"
plot \
"result_silo+nowait_ycsbB_tuple1m_skew099_th14-224.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 1 title "Silo+NoWait" ,\
"result_tictoc_ycsbB_tuple1m_skew099_th14-224.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines pt 2 title "TicToc" ,\

set ytics auto
set format y "%1.1t{/Symbol \264}10^{%T}"
set output "comp_ycsbB_tuple1m_skew099_th14-224_er.pdf"
plot \
"result_silo+nowait_ycsbB_tuple1m_skew099_th14-224.dat" using 1:11 w lines title "Silo+NoWait" ,\
"result_tictoc_ycsbB_tuple1m_skew099_th14-224.dat" using 1:11 w lines title "TicToc" ,\

set ytics 0.2 
set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]
set output "comp_ycsbC_tuple50_ar.pdf"
plot \
"result_silo_ycsbC_tuple50.dat" using 1:5:6:7 w errorlines pt 1 title "Silo" ,\
"result_mocc_ycsbC_tuple50.dat" using 1:5:6:7 w errorlines pt 2 title "MOCC" ,\

set output "comp_ycsbB_tuple1m_skew099_th14-224_ar.pdf"
plot \
"result_silo+nowait_ycsbB_tuple1m_skew099_th14-224.dat" using 1:5:6:7 w errorlines pt 1 title "Silo+NoWait" ,\
"result_tictoc_ycsbB_tuple1m_skew099_th14-224.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc" ,\

set xtics
set ylabel "Cache-Miss Rate"
set output "comp_ycsbC_tuple50_ca.pdf"
plot \
"result_silo_ycsbC_tuple50.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 1 title "Silo" ,\
"result_mocc_ycsbC_tuple50.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 2 title "MOCC" ,\

set output "comp_ycsbB_tuple1m_skew099_th14-224_cr.pdf"
plot \
"result_silo+nowait_ycsbB_tuple1m_skew099_th14-224.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 1 title "Silo+NoWait" ,\
"result_tictoc_ycsbB_tuple1m_skew099_th14-224.dat" using 1:(h($8)):(h($9)):(h($10)) w errorlines pt 2 title "TicToc" ,\

