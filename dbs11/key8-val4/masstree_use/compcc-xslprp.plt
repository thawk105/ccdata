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

t(a) = a / 1e2
m(a) = a / 1e6

set grid

#set format x "%1.1t{/Symbol \264}10^{%T}"
#set format x "10^{%T}"

set autoscale x
set xlabel "# Clocks of Sleep in Read Phase"

set terminal pdfcairo enhanced color size 5cm,5cm
#set format x "%1.0t{/Symbol \264}10^{%T}"
set xtics 0, 10000, 25000
#set format y "%1.1t{/Symbol \264}10^{%T}"
set ylabel "Throughput [MTPS]" offset 0,-1
set autoscale y
set key horiz out box center top
set output "comp_ycsbB_tuple1m_skew099_slprp0-25000_tps.pdf"
plot \
"result_silo+nowait_ycsbB_tuple1m_skew099_slprp0-25000.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines title "Silo+NoWait" ,\
"result_tictoc_ycsbB_tuple1m_skew099_slprp0-25000.dat" using 1:(m($2)):(m($3)):(m($4)) w errorlines title "TicToc" ,\

set terminal pdfcairo enhanced color size 5cm,3cm
set output "comp_ycsbA_tuple100m_skew09_slprp0-1000_tps.pdf"
set ytics 0.4
set ylabel offset 0,-1
set key inside right top nobox vert font "Arial,8"
plot \
"result_silo+no-wait_ycsbA_tuple100m_skew09_slprp0-1000.dat" using 1:(m($2)) w lines title "Silo+NoWait",\
"result_silo_ycsbA_tuple100m_skew09_slprp0-1000.dat" using 1:(m($2)) w lines title "Silo" ,\
"result_tictoc_ycsbA_tuple100m_skew09_slprp0-1000.dat" using 1:(m($2)) w lines title "TicToc" ,\

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]
set output "comp_ycsbA_tuple100m_skew09_slprp0-1000_ar.pdf"
plot \
"result_tictoc_ycsbA_tuple100m_skew09_slprp0-1000.dat" using 1:5:6:7 w errorlines pt 1 title "TicToc" ,\
"result_silo_ycsbA_tuple100m_skew09_slprp0-1000.dat" using 1:5:6:7 w errorlines pt 2 title "Silo" ,\
"result_silo+no-wait_ycsbA_tuple100m_skew09_slprp0-1000.dat" using 1:5:6:7 w errorlines pt 3 title "Silo + NoWait" ,\

set output "comp_ycsbB_tuple1m_skew099_slprp0-25000_ar.pdf"
plot \
"result_silo+nowait_ycsbB_tuple1m_skew099_slprp0-25000.dat" using 1:5:6:7 w errorlines title "Silo+NoWait" ,\
"result_tictoc_ycsbB_tuple1m_skew099_slprp0-25000.dat" using 1:5:6:7 w errorlines title "TicToc" ,\

set xtics
set ylabel "Cache-Miss Rate"
set output "comp_ycsbA_tuple100m_skew09_slprp0-1000_ca.pdf"
plot \
"result_tictoc_ycsbA_tuple100m_skew09_slprp0-1000.dat" using 1:(t($8)):(t($9)):(t($10)) w errorlines pt 1 title "TicToc" ,\
"result_silo_ycsbA_tuple100m_skew09_slprp0-1000.dat" using 1:(t($8)):(t($9)):(t($10)) w errorlines pt 2 title "Silo" ,\
"result_silo+no-wait_ycsbA_tuple100m_skew09_slprp0-1000.dat" using 1:(t($8)):(t($9)):(t($10)) w errorlines pt 3 title "Silo + NoWait" ,\

set output "comp_ycsbB_tuple1m_skew099_slprp0-25000_cr.pdf"
plot \
"result_silo+nowait_ycsbB_tuple1m_skew099_slprp0-25000.dat" using 1:(t($8)):(t($9)):(t($10)) w errorlines title "Silo+NoWait" ,\
"result_tictoc_ycsbB_tuple1m_skew099_slprp0-25000.dat" using 1:(t($8)):(t($9)):(t($10)) w errorlines title "TicToc" ,\

set ylabel "Extra Reads [Millions/SEC]"
set autoscale y
set output "comp_ycsbB_tuple1m_skew099_slprp0-25000_er.pdf"
plot \
"result_silo+nowait_ycsbB_tuple1m_skew099_slprp0-25000.dat" using 1:(m($11)) w lines title "Silo+NoWait" ,\
"result_tictoc_ycsbB_tuple1m_skew099_slprp0-25000.dat" using 1:(m($11)) w lines title "TicToc" ,\

