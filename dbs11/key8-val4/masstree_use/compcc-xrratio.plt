reset

#set xlabel font "Courier,27"
#set ylabel font "Courier,27"
#set tics   font "Courier,27"
#set key    font "Courier,27"
set key spacing 1

#set xtics  offset 0,-1
set ylabel offset -1,0
#set ylabel offset -5,0
#
#set tmargin 4
#set lmargin 14
#set bmargin 7
#set rmargin 7

f(a) = a / 1e6
g(a) = a / 1e2

set key outside horiz center top box

#set format x "%1.0t{/Symbol \264}10^{%T}"
set xlabel "Read Ratio (%/100%)"

set grid

set xrange [10:90]

set terminal pdfcairo enhanced color size 6cm,6cm
set format y "%1.0t{/Symbol \264}10^{%T}"
#set format y "%g"
set ylabel "Throughput [tps]"
set output "comp_tuple1k_rratio10-90_tps.pdf"
plot \
"result_cicada_tuple1k_rratio10-90.dat" using 1:2:3:4 w errorlines pt 1 title "Cicada" ,\
"result_ermia_tuple1k_rratio10-90.dat" using 1:2:3:4 w errorlines pt 2 title "ERMIA" ,\
"result_mocc_tuple1k_rratio10-90.dat" using 1:2:3:4 w errorlines pt 3 title "MOCC" ,\
"result_si_tuple1k_rratio10-90.dat" using 1:2:3:4 w errorlines pt 4 title "SI" ,\
"result_silo_tuple1k_rratio10-90.dat" using 1:2:3:4 w errorlines pt 6 title "Silo" ,\
"result_ss2pl_tuple1k_rratio10-90.dat" using 1:2:3:4 w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_tuple1k_rratio10-90.dat" using 1:2:3:4 w errorlines pt 8 title "TicToc" ,\
 
set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]
set output "comp_tuple1k_rratio10-90_ar.pdf"
plot \
"result_cicada_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada" ,\
"result_ermia_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA" ,\
"result_mocc_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC" ,\
"result_si_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 4 title "SI" ,\
"result_silo_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 6 title "Silo" ,\
"result_ss2pl_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 8 title "TicToc" ,\

set ylabel "Cache-Miss Rate"
set output "comp_tuple1k_rratio10-90_cr.pdf"
plot \
"result_cicada_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada" ,\
"result_ermia_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA" ,\
"result_mocc_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC" ,\
"result_si_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SI" ,\
"result_silo_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo" ,\
"result_ss2pl_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL" ,\
"result_tictoc_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "TicToc" ,\

set ylabel "Throughput (M tps)"
set autoscale y
set yrange [0:50]
set output "comp_tuple1m_rratio10-90_tps.pdf"
plot \
"result_silo_tuple1m_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1m_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple1m_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc--", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple1m_rratio10-90_ar.pdf"
plot \
"result_silo_tuple1m_rratio10-90.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1m_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \

set xtics
set ylabel "Cache-Miss Rate"

set output "comp_tuple1m_rratio10-90_ca.pdf"
plot \
"result_silo_tuple1m_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1m_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple1m_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc--", \

#set format y "%1.0t{/Symbol \264}10^{%T}"
set format y "%g"
unset yrange
set ylabel "Throughput (M tps)"
set autoscale y
set yrange [0:20]
set output "comp_tuple100m_rratio10-90_tps.pdf"
plot \
"result_silo_tuple100m_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple100m_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc--", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple100m_rratio10-90_ar.pdf"
plot \
"result_silo_tuple100m_rratio10-90.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple100m_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc--", \

set xtics
set ylabel "Cache-Miss Rate"

set output "comp_tuple100m_rratio10-90_ca.pdf"
plot \
"result_silo_tuple100m_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple100m_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc--", \

#set format y "%1.0t{/Symbol \264}10^{%T}"
set format y "%g"
unset yrange
set ylabel "Throughput (M tps)"
set autoscale y
set output "comp_tuple1k_rratio10-90_tps.pdf"
plot \
"result_silo_tuple1k_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1k_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple1k_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc--", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple1k_rratio10-90_ar.pdf"
plot \
"result_silo_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc--", \

set xtics
set ylabel "Cache-Miss Rate"

set output "comp_tuple1k_rratio10-90_ca.pdf"
plot \
"result_silo_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc--", \

#set format y "%1.0t{/Symbol \264}10^{%T}"
set format y "%g"
unset yrange
set ylabel "Throughput (M tps)"
set autoscale y
set output "comp_tuple100m_skew09_rratio10-90_tps.pdf"
plot \
"result_silo_tuple100m_skew09_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_skew09_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc", \
"result_tictoc--_tuple100m_skew09_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc--", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple100m_skew09_rratio10-90_ar.pdf"
plot \
"result_silo_tuple100m_skew09_rratio10-90.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_skew09_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \
"result_tictoc--_tuple100m_skew09_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc--", \

set xtics
set ylabel "Cache-Miss Rate"

set output "comp_tuple100m_skew09_rratio10-90_ca.pdf"
plot \
"result_silo_tuple100m_skew09_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_skew09_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \
"result_tictoc--_tuple100m_skew09_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc--", \

set xrange [0:100]

#set format y "%1.0t{/Symbol \264}10^{%T}"
set format y "%g"
set ylabel "Throughput (M tps)"
set autoscale y
set yrange[0:48]
set output "comp_tuple1m_rratio0-100_tps.pdf"
plot \
"result_silo_tuple1m_rratio0-100.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1m_rratio0-100.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple1m_rratio0-100_ar.pdf"
plot \
"result_silo_tuple1m_rratio0-100.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1m_rratio0-100.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \

set xtics
set ylabel "Cache-Miss Rate"

set output "comp_tuple1m_rratio0-100_ca.pdf"
plot \
"result_silo_tuple1m_rratio0-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1m_rratio0-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \

set ylabel "Rts Update Rate"
set output "comp_tuple1m_rratio0-100_rr.pdf"
plot \
"result_tictoc_tuple1m_rratio0-100.dat" using 1:11 w lp title "TicToc", \

#set format y "%1.0t{/Symbol \264}10^{%T}"
set format y "%g"
unset yrange
set ylabel "Throughput (M tps)"
set autoscale y
set yrange[0:20]
set output "comp_tuple100m_rratio0-100_tps.pdf"
plot \
"result_silo_tuple100m_rratio0-100.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_rratio0-100.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple100m_rratio0-100_ar.pdf"
plot \
"result_silo_tuple100m_rratio0-100.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_rratio0-100.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \

set xtics
set ylabel "Cache-Miss Rate"

set output "comp_tuple100m_rratio0-100_ca.pdf"
plot \
"result_silo_tuple100m_rratio0-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_rratio0-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \

set ylabel "Rts Update Rate"
set output "comp_tuple100m_rratio0-100_rr.pdf"
plot \
"result_tictoc_tuple100m_rratio0-100.dat" using 1:11 w lp title "TicToc", \

#set format y "%1.0t{/Symbol \264}10^{%T}"
set format y "%g"
unset yrange
set ylabel "Throughput (M tps)"
set autoscale y
set output "comp_tuple1k_rratio0-100_tps.pdf"
plot \
"result_silo_tuple1k_rratio0-100.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1k_rratio0-100.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple1k_rratio0-100_ar.pdf"
plot \
"result_silo_tuple1k_rratio0-100.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1k_rratio0-100.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \

set xtics
set ylabel "Cache-Miss Rate"

set output "comp_tuple1k_rratio0-100_ca.pdf"
plot \
"result_silo_tuple1k_rratio0-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1k_rratio0-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \

set ylabel "Rts Update Rate"
set output "comp_tuple1k_rratio0-100_rr.pdf"
plot \
"result_tictoc_tuple1k_rratio0-100.dat" using 1:11 w lp title "TicToc", \

