reset

#set xlabel font "Courier,27"
#set ylabel font "Courier,27"
#set tics   font "Courier,27"
#set key    font "Courier,27"
#set key spacing 1

#set xtics  offset 0,-1
#set xlabel offset 0,-2
#set ylabel offset -1,0

#set tmargin 3
#set lmargin 3
#set bmargin 3
#set rmargin 3

f(a) = a / 1e6
g(a) = a / 1e2

set key outside horiz right top box

set grid

#set format x "%1.0t{/Symbol \264}10^{%T}"
set xlabel "# Threads"
set autoscale y
set autoscale x

set terminal pdfcairo enhanced color size 5cm,3cm
unset yrange
set ytics 2
set format y "%1.0f"
set ylabel "Throughput (tps)"
set output "comp_tuple1g_val1k_skew09_ycsbC_tps.pdf"
plot \
"result_cicada_ycsbC_tuple1g_skew09_val1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada", \
"result_mocc_ycsbC_tuple1g_skew09_val1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "MOCC", \
"result_silo_ycsbC_tuple1g_skew09_val1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbC_tuple1g_skew09_val1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbC_tuple1g_skew09_val1k.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "TicToc", \

set ytics 0.2
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]

set output "comp_tuple1g_val1k_skew09_ycsbC_ar.pdf"
plot \
"result_cicada_ycsbC_tuple1g_skew09_val1k.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_mocc_ycsbC_tuple1g_skew09_val1k.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC", \
"result_silo_ycsbC_tuple1g_skew09_val1k.dat" using 1:5:6:7 w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbC_tuple1g_skew09_val1k.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbC_tuple1g_skew09_val1k.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc", \

set xtics
set ylabel "Cache-miss rate"

set output "comp_tuple1g_val1k_skew09_ycsbC_ca.pdf"
plot \
"result_cicada_ycsbC_tuple1g_skew09_val1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_mocc_ycsbC_tuple1g_skew09_val1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC", \
"result_silo_ycsbC_tuple1g_skew09_val1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbC_tuple1g_skew09_val1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbC_tuple1g_skew09_val1k.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc", \

set terminal pdfcairo enhanced color size 5cm,3cm
unset yrange
set ytics autofreq
set ytics 10
set format y "%1.0f"
set ylabel "Throughput [MTPS]" offset 0,0 font "Arial,10"
set xrange [0:80]
set xtics 0,20,80
set key top inside left nobox vert font "Arial,11"
set output "comp_tuple10m_val1k_ycsbC_tps.pdf"
plot \
"result_silo_ycsbC_tuple10m_ope2.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Silo",\
"result_tictoc_ycsbC_tuple10m_ope2.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "TicToc",\
"result_dbx1000-silo-tictoc_ycsbC_tuple10m_ope2.dat" using 1:2 w lp pt 6 notitle,\
"result_dbx1000-silo-tictoc_ycsbC_tuple10m_ope2.dat" using 1:3 w lp pt 8 notitle,\

set ytics 2
set key inside left nobox vert font "Arial,7" spacing 1.5
set output "comp_tuple10m_val1k_ycsb_medium_tps.pdf"
plot \
"result_silo_ycsb_tuple10m_skew08.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 notitle,\
"result_tictoc_ycsb_tuple10m_skew08.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 notitle,\
"result_dbx1000-silo-tictoc_tuple10m_skew08.dat" using 1:2 w lp pt 6 title "DBx1000-Silo",\
"result_dbx1000-silo-tictoc_tuple10m_skew08.dat" using 1:2 w lp pt 8 title "DBx1000-TicToc",\

set ytics 0.5
set format y "%1.1f"
set key vert at graph 0.6,0.95 font "Arial,9"
set output "comp_tuple10m_val1k_ycsb_high_tps.pdf"
plot \
"result_silo_ycsb_tuple10m_skew09.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 notitle,\
"result_tictoc_ycsb_tuple10m_skew09.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 notitle,\
"result_tictoc-original-no-wait_ycsb_tuple10m_skew09.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "Torg",\
"result_tictoc+backoff_ycsb_tuple10m_skew09.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "T+BO",\

set terminal pdfcairo enhanced color size 5cm,5cm
set ytics 0.5
set format y "%1.1f"
set ylabel offset 0,0
set key top outside box horiz
set output "comp_tuple10m_val1k_ycsb_high_cmp-no-wait_tps.pdf"
plot \
"result_tictoc_ycsb_tuple10m_skew09.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "TicToc+NW'",\
"result_tictoc+backoff_ycsb_tuple10m_skew09.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "TicToc+BO",\
"result_tictoc-original-no-wait_ycsb_tuple10m_skew09.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "TicToc+ONW",\

set ytics 0.2
set ylabel "Abort Ratio"
set format y "%1.1f"
set yrange [0:1]
set output "comp_tuple10m_val1k_ycsb_high_cmp-no-wait_ar.pdf"
plot \
"result_tictoc_ycsb_tuple10m_skew09.dat" using         1:5:6:7 w errorlines pt 2 title "TicToc+NW'",\
"result_tictoc+backoff_ycsb_tuple10m_skew09.dat" using 1:5:6:7 w errorlines pt 3 title "TicToc+BO",\
"result_tictoc-original-no-wait_ycsb_tuple10m_skew09.dat" using         1:5:6:7 w errorlines pt 4 title "TicToc+ONW",\

