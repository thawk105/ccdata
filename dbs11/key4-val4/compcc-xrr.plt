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

set autoscale x
set autoscale y

f(a) = a / 1e6
g(a) = a / 1e2

set ylabel "Throughput (M tps)"
set ylabel font "Courier,17"
set ylabel offset -2.5,0
set ytics autofreq

set terminal pdfcairo enhanced color size 12cm,12cm
set output "comp_rratio10-90_ycsbA.pdf"
set multiplot

set tmargin screen 0.9
set bmargin screen 0.7
plot \
"result_silo_ycsbA_rratio10-90.dat" using (g($1)):(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Silo", \
"result_ss2pl_ycsbA_rratio10-90.dat" using (g($1)):(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "SS2PL", \
"result_tictoc_ycsbA_rratio10-90.dat" using (g($1)):(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "TicToc", \

set ylabel "Abort Rate"
set ytics offset -0.5,0
set format y "%1.2f"
set yrange [0:1]

unset key
set tmargin screen 0.6
set bmargin screen 0.4
plot \
"result_silo_ycsbA_rratio10-90.dat" using (g($1)):5:6:7 w errorlines pt 1 title "Silo", \
"result_ss2pl_ycsbA_rratio10-90.dat" using (g($1)):5:6:7 w errorlines pt 2 title "SS2PL", \
"result_tictoc_ycsbA_rratio10-90.dat" using (g($1)):5:6:7 w errorlines pt 3 title "TicToc", \

set xtics
set xlabel "Read Ratio"
set xlabel font "Courier,17"
set xlabel offset 0,0.3

set ylabel "Cache-miss rate"

set tmargin screen 0.3
set bmargin screen 0.1
plot \
"result_silo_ycsbA_rratio10-90.dat" using (g($1)):(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Silo", \
"result_ss2pl_ycsbA_rratio10-90.dat" using (g($1)):(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "SS2PL", \
"result_tictoc_ycsbA_rratio10-90.dat" using (g($1)):(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "TicToc", \
