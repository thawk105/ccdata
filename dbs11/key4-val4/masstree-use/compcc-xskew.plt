set tics   font "Courier,17"

set key    font "Courier,12"
set key outside horiz center box width 0.8 top
set key spacing 1.5

#set format y "%2.0t{/Symbol \264}10^{%T}"
set format y "%1.1f"
set notitle

set grid

set autoscale x
set autoscale y

#set origin 0.05,0.05
set size square

f(a) = a / 1e6
g(a) = a / 1e2

set tmargin 5
set lmargin 10
set bmargin 5
set rmargin 3
set ylabel "Throughput (million tps)"
set ylabel font "Courier,17"
set ylabel offset 0,0
set ytics autofreq

set xlabel "skew"
#set xtics (0, 0.4, 0.6, 0.8, 0.9, 0.95, 0.99)
set autoscale x
set xtics ('0' 0, '0.1' 0.1, '0.2' 0.2, '0.3' 0.3, '0.4' 0.4, '0.5' 0.5, '0.6' 0.6, '0.7' 0.7, '0.8' 0.8, '0.9' 0.9, '0.99' 0.99)
#set xrange [-0.1:1.1]
set xlabel font "Courier,17"
set ylabel offset -2.5,0

set terminal pdfcairo enhanced color size 12cm,12cm
set output "comp_ycsbB_tuple100m_skew0-099_tps.pdf"
plot \
"result_cicada_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "SI", \
"result_silo_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "SS2PL", \
"result_tictoc_ycsbB_tuple100m_skew0-099.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 12 title "TicToc", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_ycsbB_tuple100m_skew0-099_ar.pdf"
plot \
"result_cicada_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 4 title "MOCC", \
"result_si_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 6 title "SI", \
"result_silo_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 10 title "SS2PL", \
"result_tictoc_ycsbB_tuple100m_skew0-099.dat" using 1:5:6:7 w errorlines pt 12 title "TicToc", \

set output "comp_ycsbB_tuple100m_skew0-099_cm.pdf"
set ylabel "cache-miss rate"
plot \
"result_cicada_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA", \
"result_mocc_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "MOCC", \
"result_si_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "SI", \
"result_silo_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "Silo", \
"result_ss2pl_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "SS2PL", \
"result_tictoc_ycsbB_tuple100m_skew0-099.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 12 title "TicToc", \