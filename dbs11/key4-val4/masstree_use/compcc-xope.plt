reset
set tics   font "Courier,12"

set key    font "Courier,12"
set key outside horiz center box width 0.8 top
set key spacing 1.5

set format y "%2.0t{/Symbol \264}10^{%T}"
#set format y "%1.1f"
set notitle

set grid

set autoscale x
set autoscale y

#set origin 0.05,0.05
set size square

f(a) = a / 1e3
g(a) = a / 1e2
h(a, b) = a / 1e3 / b

set tmargin 5
set lmargin 10
set bmargin 5
set rmargin 3
set ylabel font "Courier,12"
set ylabel offset 0,0
set ytics autofreq

set xlabel "Operations / Transaction"
set xlabel font "Courier,12"
set ylabel offset -2.5,0

set terminal pngcairo enhanced color size 20cm,20cm
set ylabel "Throughput (K tps)"
set logscale y
set output "comp_ycsbB_tuple100m_skew08_ope10-100_tps.png"
plot \
"result_mocc_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:(h($2, $1)):(h($3, $1)):(h($4, $1)) w errorlines pt 1 title "MOCC", \
"result_ss2pl-dlr0_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:(h($2, $1)):(h($3, $1)):(h($4, $1)) w errorlines pt 2 title "SS2PL - Normal", \
"result_ss2pl-dlr1_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:(h($2, $1)):(h($3, $1)):(h($4, $1)) w errorlines pt 3 title "SS2PL - No Wait", \
#"result_mocc_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 1 title "MOCC", \
#"result_ss2pl-dlr0_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 2 title "SS2PL - Normal", \
#"result_ss2pl-dlr1_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:(f($2)):(f($3)):(f($4)) w errorlines pt 3 title "SS2PL - No Wait", \

set ylabel "Abort Rate"
set format y "%1.2f"
unset logscale y
set yrange [0:1]
set output "comp_ycsbB_tuple100m_skew08_ope10-100_ar.png"
plot \
"result_mocc_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:5:6:7 w errorlines pt 1 title "MOCC", \
"result_ss2pl-dlr0_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:5:6:7 w errorlines pt 2 title "SS2PL - Normal", \
"result_ss2pl-dlr1_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:5:6:7 w errorlines pt 3 title "SS2PL - No Wait", \

set ylabel "cache-miss rate"
set output "comp_ycsbB_tuple100m_skew08_ope10-100_cm.png"
plot \
"result_mocc_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "MOCC", \
"result_ss2pl-dlr0_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "SS2PL - Normal", \
"result_ss2pl-dlr1_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "SS2PL - No Wait", \

