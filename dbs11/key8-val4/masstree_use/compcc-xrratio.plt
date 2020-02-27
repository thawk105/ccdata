reset

#set xlabel font "Courier,27"
#set ylabel font "Courier,27"
#set tics   font "Courier,27"
#set key    font "Courier,27"
set key outside center top horiz box

#set xtics  offset 0,-1
#set ylabel offset -1,0
#set ylabel offset -5,0
#
#set tmargin 4
#set lmargin 14
#set bmargin 7
#set rmargin 7

f(a) = a / 1e6
g(a) = a / 1e2

#set format x "%1.0t{/Symbol \264}10^{%T}"
set xlabel "Read Ratio [%]"

set grid

set xrange [10:90]

set terminal pdfcairo enhanced color size 5cm,5cm
#set format y "%1.1t{/Symbol \264}10^{%T}"
set ytics 10
set format y "%1.0f"
set ylabel "Throughput [MTPS]"
set xtics 20
set output "comp_tuple1k_rratio10-90_tps.pdf"
plot \
"result_cicada_tuple1k_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada" ,\
"result_ermia_tuple1k_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "ERMIA" ,\
"result_mocc_tuple1k_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "MOCC" ,\
"result_si_tuple1k_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "SI" ,\
"result_silo_tuple1k_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "Silo" ,\
"result_ss2pl_tuple1k_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "2PL" ,\
"result_tictoc_tuple1k_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "TicToc" ,\
 
set ytics 0.2                                                                
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]
set output "comp_tuple1k_rratio10-90_ar.pdf"
plot \
"result_cicada_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada" ,\
"result_ermia_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA" ,\
"result_mocc_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC" ,\
"result_si_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 4 title "SI" ,\
"result_silo_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 6 title "Silo" ,\
"result_ss2pl_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 8 title "2PL" ,\
"result_tictoc_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 8 title "TicToc" ,\

set ylabel "Cache-Miss Ratio"
set output "comp_tuple1k_rratio10-90_cr.pdf"
plot \
"result_cicada_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada" ,\
"result_ermia_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA" ,\
"result_mocc_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC" ,\
"result_si_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SI" ,\
"result_silo_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo" ,\
"result_ss2pl_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "2PL" ,\
"result_tictoc_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "TicToc" ,\

set ytics 5
set ylabel "Throughput [MTPS]" offset -1,-1
unset yrange
set format y "%1.0f"
set autoscale y
set output "comp-silo-tictoc_tuple1m_rratio10-90_tps.pdf"
plot \
"result_silo_tuple1m_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1m_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple1m_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "TicToc--", \

set ytics 0.2
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]

set output "comp-silo-tictoc_tuple1m_rratio10-90_ar.pdf"
plot \
"result_silo_tuple1m_rratio10-90.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1m_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \

set xtics
set ylabel "Cache-Miss Ratio"

set output "comp-silo-tictoc_tuple1m_rratio10-90_ca.pdf"
plot \
"result_silo_tuple1m_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1m_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple1m_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc--", \

set ytics 5
set ylabel "Throughput [MTPS]"
unset yrange                                                                 
set format y "%1.0f"
set autoscale y
set output "comp-silo-tictoc_tuple100m_rratio10-90_tps.pdf"
plot \
"result_silo_tuple100m_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple100m_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "TicToc--", \

set ytics 0.2
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]

set output "comp-silo-tictoc_tuple100m_rratio10-90_ar.pdf"
plot \
"result_silo_tuple100m_rratio10-90.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple100m_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc--", \

set xtics
set ylabel "Cache-Miss Ratio"

set output "comp-silo-tictoc_tuple100m_rratio10-90_ca.pdf"
plot \
"result_silo_tuple100m_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple100m_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc--", \

set ytics 10
set ylabel "Throughput [MTPS]" offset -1,-1
unset yrange                                                                 
set format y "%1.0f"
set autoscale y
set output "comp-silo-tictoc_tuple1k_rratio10-90_tps.pdf"
plot \
"result_silo_tuple1k_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1k_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple1k_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "TicToc--", \


set ytics 0.2
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]
set output "comp-silo-tictoc_tuple1k_rratio10-90_ar.pdf"
plot \
"result_silo_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple1k_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc--", \

set xtics
set ylabel "Cache-Miss Ratio"

set output "comp-silo-tictoc_tuple1k_rratio10-90_ca.pdf"
plot \
"result_silo_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \
#"result_tictoc--_tuple1k_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc--", \

set ytics 5
set ylabel "Throughput [MTPS]"
unset yrange                                                                 
set format y "%1.0f"
set autoscale y
set output "comp-silo-tictoc_tuple100m_skew09_rratio10-90_tps.pdf"
plot \
"result_silo_tuple100m_skew09_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Silo", \
"result_silo+no-wait_tuple100m_skew09_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "Silo+No wait", \
"result_tictoc_tuple100m_skew09_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "TicToc+Full opt", \
"result_tictoc---_tuple100m_skew09_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "TicToc+No opt", \
"result_tictoc+nowait_tuple100m_skew09_rratio10-90.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "TicToc+No wait", \

set ytics 0.2
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]
set output "comp-silo-tictoc_tuple100m_skew09_rratio10-90_ar.pdf"
plot \
"result_silo_tuple100m_skew09_rratio10-90.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_silo+no-wait_tuple100m_skew09_rratio10-90.dat" using 1:5:6:7 w errorlines pt 2 title "Silo+No wait", \
"result_tictoc_tuple100m_skew09_rratio10-90.dat" using 1:5:6:7 w errorlines pt 3 title "TicToc+Full opt", \
"result_tictoc---_tuple100m_skew09_rratio10-90.dat" using 1:5:6:7 w errorlines pt 4 title "TicToc+No opt", \
"result_tictoc+nowait_tuple100m_skew09_rratio10-90.dat" using 1:5:6:7 w errorlines pt 6 title "TicToc+No wait", \

set xtics
set ylabel "Cache-Miss Ratio"

set output "comp-silo-tictoc_tuple100m_skew09_rratio10-90_ca.pdf"
plot \
"result_silo_tuple100m_skew09_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_silo+no-wait_tuple100m_skew09_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "Silo + no-wait", \
"result_tictoc_tuple100m_skew09_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "TicToc + full opt", \
"result_tictoc---_tuple100m_skew09_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "TicToc + no opt", \
"result_tictoc+nowait_tuple100m_skew09_rratio10-90.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "TicToc + no-wait", \

set ytics 10
set xrange [0:100]
set ylabel "Throughput [MTPS]"
unset yrange                                                                 
set format y "%1.0f"
set autoscale y
set output "comp-silo-tictoc_tuple1m_rratio0-100_tps.pdf"
plot \
"result_silo_tuple1m_rratio0-100.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1m_rratio0-100.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "TicToc", \

set ytics 0.2
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]

set output "comp-silo-tictoc_tuple1m_rratio0-100_ar.pdf"
plot \
"result_silo_tuple1m_rratio0-100.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1m_rratio0-100.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \

set xtics
set ylabel "Cache-Miss Ratio"

set output "comp-silo-tictoc_tuple1m_rratio0-100_ca.pdf"
plot \
"result_silo_tuple1m_rratio0-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1m_rratio0-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \

set ylabel "Rts Update Ratio"
set output "comp-silo-tictoc_tuple1m_rratio0-100_rr.pdf"
plot \
"result_tictoc_tuple1m_rratio0-100.dat" using 1:11 w lp title "TicToc", \

set ytics 2
set ylabel "Throughput [MTPS]"
unset yrange                                                                 
set format y "%1.0f"
set autoscale y
set output "comp-silo-tictoc_tuple100m_rratio0-100_tps.pdf"
plot \
"result_silo_tuple100m_rratio0-100.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_rratio0-100.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "TicToc", \

set ytics 0.2
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]

set output "comp-silo-tictoc_tuple100m_rratio0-100_ar.pdf"
plot \
"result_silo_tuple100m_rratio0-100.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_rratio0-100.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \

set xtics
set ylabel "Cache-Miss Ratio"

set output "comp-silo-tictoc_tuple100m_rratio0-100_ca.pdf"
plot \
"result_silo_tuple100m_rratio0-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple100m_rratio0-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \

set ylabel "Rts Update Ratio"
set output "comp-silo-tictoc_tuple100m_rratio0-100_rr.pdf"
plot \
"result_tictoc_tuple100m_rratio0-100.dat" using 1:11 w lp title "TicToc", \

set ytics 10
set ylabel "Throughput [MTPS]"
unset yrange                                                                 
set format y "%1.0f"
set autoscale y
set output "comp-silo-tictoc_tuple1k_rratio0-100_tps.pdf"
plot \
"result_silo_tuple1k_rratio0-100.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1k_rratio0-100.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "TicToc", \

set ytics 0.2
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]

set output "comp-silo-tictoc_tuple1k_rratio0-100_ar.pdf"
plot \
"result_silo_tuple1k_rratio0-100.dat" using 1:5:6:7 w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1k_rratio0-100.dat" using 1:5:6:7 w errorlines pt 2 title "TicToc", \

set xtics
set ylabel "Cache-Miss Ratio"

set output "comp-silo-tictoc_tuple1k_rratio0-100_ca.pdf"
plot \
"result_silo_tuple1k_rratio0-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_tictoc_tuple1k_rratio0-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "TicToc", \

set ylabel "Rts Update Ratio"
set output "comp-silo-tictoc_tuple1k_rratio0-100_rr.pdf"
plot \
"result_tictoc_tuple1k_rratio0-100.dat" using 1:11 w lp title "TicToc", \

unset xrange
set xtics 0,1,10
set ytics autofreq
set xlabel "# writes in YCSB Transaction"
moccXfunc(a) = 10 - a/10
set autoscale x
set ylabel "Throughput [TPS]" offset -1,0
unset yrange                                                                 
set format y "%1.1t{/Symbol \264}10^{%T}"
set logscale y
unset key
set terminal pdfcairo enhanced color size 5cm,3cm
set output "comp-silo-mocc_tuple50_rratio10-100_tps.pdf"
plot \
"result_silo_tuple50_rratio0-100.dat" using (moccXfunc($1)):2:3:4 w errorlines pt 1 title "Silo", \
"result_mocc_tuple50_rratio0-100.dat" using (moccXfunc($1)):2:3:4 w errorlines pt 2 title "MOCC", \

set ytics 0.2
unset logscale y
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]

set output "comp-silo-mocc_tuple50_rratio10-100_ar.pdf"
plot \
"result_silo_tuple50_rratio0-100.dat" using (moccXfunc($1)):5:6:7 w errorlines pt 1 title "Silo", \
"result_mocc_tuple50_rratio0-100.dat" using (moccXfunc($1)):5:6:7 w errorlines pt 2 title "MOCC", \

set xtics
set ylabel "Cache-Miss Ratio"

set output "comp-silo-mocc_tuple50_rratio10-100_ca.pdf"
plot \
"result_silo_tuple50_rratio0-100.dat" using (moccXfunc($1)):(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_mocc_tuple50_rratio0-100.dat" using (moccXfunc($1)):(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "MOCC", \

