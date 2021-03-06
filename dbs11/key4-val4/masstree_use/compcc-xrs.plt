reset

set xlabel font "Courier,27"
set ylabel font "Courier,27"
set tics   font "Courier,27"
set key    font "Courier,27"
set key spacing 1

set xlabel offset 0,-3
set ylabel offset -9,0

set xtics offset 0,-1

set lmargin 20 
set rmargin 8
set bmargin 8 

set size square
set grid

f(a) = a / 1e6
g(a) = a / 1e2

set key outside horiz center top box width 1

set format x "%1.0t{/Symbol \264}10^{%T}"
set xlabel "Database Size"
set logscale x

set ylabel "Throughput (M tps)"

set terminal pdfcairo enhanced color size 20cm,20cm
set output "comp_tuple1000-100m_ycsbB_tps.pdf"
plot \
"result_cicada_ycsbB_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "ERMIA'", \
"result_mocc_ycsbB_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "MOCC", \
"result_si_ycsbB_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "SI", \
"result_silo_ycsbB_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbB_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbB_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "TicToc", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple1000-100m_ycsbB_ar.pdf"
plot \
"result_cicada_ycsbB_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA'", \
"result_mocc_ycsbB_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC", \
"result_si_ycsbB_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 4 title "SI", \
"result_silo_ycsbB_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbB_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbB_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc", \

set xtics
set ylabel "Cache-Miss Rate"

set output "comp_tuple1000-100m_ycsbB_ca.pdf"
plot \
"result_cicada_ycsbB_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbB_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA'", \
"result_mocc_ycsbB_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC", \
"result_si_ycsbB_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SI", \
"result_silo_ycsbB_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo", \
"result_ss2pl_ycsbB_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbB_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc", \

unset yrange
set ylabel "Throughput (M tps)"

set terminal pdfcairo enhanced color size 20cm,20cm
set output "comp_tuple1000-100m_ycsbA_tps.pdf"
plot \
"result_cicada_ycsbA_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "ERMIA'", \
"result_mocc_ycsbA_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "MOCC", \
"result_si_ycsbA_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 4 title "SI", \
"result_silo_ycsbA_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbA_tuple1000-100m.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 10 title "TicToc", \

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]

set output "comp_tuple1000-100m_ycsbA_ar.pdf"
plot \
"result_cicada_ycsbA_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 2 title "ERMIA'", \
"result_mocc_ycsbA_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 3 title "MOCC", \
"result_si_ycsbA_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 4 title "SI", \
"result_silo_ycsbA_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbA_tuple1000-100m.dat" using 1:5:6:7 w errorlines pt 10 title "TicToc", \

set xtics
set ylabel "Cache-Miss Rate"

set output "comp_tuple1000-100m_ycsbA_ca.pdf"
plot \
"result_cicada_ycsbA_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "Cicada", \
"result_ermia_ycsbA_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "ERMIA'", \
"result_mocc_ycsbA_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "MOCC", \
"result_si_ycsbA_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 4 title "SI", \
"result_silo_ycsbA_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 6 title "Silo", \
"result_ss2pl-dlr1_ycsbA_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 8 title "SS2PL", \
"result_tictoc_ycsbA_tuple1000-100m.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 10 title "TicToc", \

