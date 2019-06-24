reset

f(a) = a / 1e6
g(a) = a / 1e2

set key outside horiz center top box

#set format x "%1.0t{/Symbol \264}10^{%T}"
set xlabel "read ratio (%/100%)"


set xrange [10:90]

set terminal pngcairo enhanced color size 20cm,20cm
#set format y "%1.0t{/Symbol \264}10^{%T}"
set format y "%g"
set ylabel "Throughput (M tps)"
set autoscale y
set yrange [0:50]
set output "comp_tuple1m_rratio10-90_tps.png"
plot \
"result_silo_tuple1m_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1m_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple1m_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc--", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple1m_rratio10-90_ar.png"
plot \
"result_silo_tuple1m_rratio10-90.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1m_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \

set xtics
set ylabel "Cache-miss rate"

set output "comp_tuple1m_rratio10-90_ca.png"
plot \
"result_silo_tuple1m_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1m_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple1m_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc--", \

set terminal pngcairo enhanced color size 20cm,20cm
#set format y "%1.0t{/Symbol \264}10^{%T}"
set format y "%g"
unset yrange
set ylabel "Throughput (M tps)"
set autoscale y
set yrange [0:20]
set output "comp_tuple100m_rratio10-90_tps.png"
plot \
"result_silo_tuple100m_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple100m_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc--", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple100m_rratio10-90_ar.png"
plot \
"result_silo_tuple100m_rratio10-90.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple100m_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc--", \

set xtics
set ylabel "Cache-miss rate"

set output "comp_tuple100m_rratio10-90_ca.png"
plot \
"result_silo_tuple100m_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple100m_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc--", \

set terminal pngcairo enhanced color size 20cm,20cm
#set format y "%1.0t{/Symbol \264}10^{%T}"
set format y "%g"
unset yrange
set ylabel "Throughput (M tps)"
set autoscale y
set output "comp_tuple1k_rratio10-90_tps.png"
plot \
"result_silo_tuple1k_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1k_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple1k_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc--", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple1k_rratio10-90_ar.png"
plot \
"result_silo_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc--", \

set xtics
set ylabel "Cache-miss rate"

set output "comp_tuple1k_rratio10-90_ca.png"
plot \
"result_silo_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc--", \

#set format y "%1.0t{/Symbol \264}10^{%T}"
set format y "%g"
unset yrange
set ylabel "Throughput (M tps)"
set autoscale y
set output "comp_tuple100m_skew09_rratio10-90_tps.png"
plot \
"result_silo_tuple100m_skew09_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_skew09_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc", \
"result_tictoc--_tuple100m_skew09_rratio10-90.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc--", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple100m_skew09_rratio10-90_ar.png"
plot \
"result_silo_tuple100m_skew09_rratio10-90.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_skew09_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \
"result_tictoc--_tuple100m_skew09_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc--", \

set xtics
set ylabel "Cache-miss rate"

set output "comp_tuple100m_skew09_rratio10-90_ca.png"
plot \
"result_silo_tuple100m_skew09_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_skew09_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \
"result_tictoc--_tuple100m_skew09_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc--", \

set xrange [0:100]

set terminal pngcairo enhanced color size 20cm,20cm
#set format y "%1.0t{/Symbol \264}10^{%T}"
set format y "%g"
set ylabel "Throughput (M tps)"
set autoscale y
set output "comp_tuple1m_rratio0-100_tps.png"
plot \
"result_silo_tuple1m_rratio0-100.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1m_rratio0-100.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple1m_rratio0-100_ar.png"
plot \
"result_silo_tuple1m_rratio0-100.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1m_rratio0-100.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \

set xtics
set ylabel "Cache-miss rate"

set output "comp_tuple1m_rratio0-100_ca.png"
plot \
"result_silo_tuple1m_rratio0-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1m_rratio0-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \

set ylabel "rts update rate"
set output "comp_tuple1m_rratio0-100_rr.png"
plot \
"result_tictoc_tuple1m_rratio0-100.dat" using 1:11 w lp title "TicToc", \

set terminal pngcairo enhanced color size 20cm,20cm
set terminal pngcairo enhanced color size 20cm,20cm
#set format y "%1.0t{/Symbol \264}10^{%T}"
set format y "%g"
unset yrange
set ylabel "Throughput (M tps)"
set autoscale y
set output "comp_tuple100m_rratio0-100_tps.png"
plot \
"result_silo_tuple100m_rratio0-100.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_rratio0-100.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple100m_rratio0-100_ar.png"
plot \
"result_silo_tuple100m_rratio0-100.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_rratio0-100.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \

set xtics
set ylabel "Cache-miss rate"

set output "comp_tuple100m_rratio0-100_ca.png"
plot \
"result_silo_tuple100m_rratio0-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_rratio0-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \

set ylabel "rts update rate"
set output "comp_tuple100m_rratio0-100_rr.png"
plot \
"result_tictoc_tuple100m_rratio0-100.dat" using 1:11 w lp title "TicToc", \

set terminal pngcairo enhanced color size 20cm,20cm
#set format y "%1.0t{/Symbol \264}10^{%T}"
set format y "%g"
unset yrange
set ylabel "Throughput (M tps)"
set autoscale y
set output "comp_tuple1k_rratio0-100_tps.png"
plot \
"result_silo_tuple1k_rratio0-100.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1k_rratio0-100.dat" using 1:(f($2), f($3), f($4)) w errorlines pt 2 title "TicToc", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple1k_rratio0-100_ar.png"
plot \
"result_silo_tuple1k_rratio0-100.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1k_rratio0-100.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \

set xtics
set ylabel "Cache-miss rate"

set output "comp_tuple1k_rratio0-100_ca.png"
plot \
"result_silo_tuple1k_rratio0-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1k_rratio0-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \

set ylabel "rts update rate"
set output "comp_tuple1k_rratio0-100_rr.png"
plot \
"result_tictoc_tuple1k_rratio0-100.dat" using 1:11 w lp title "TicToc", \

