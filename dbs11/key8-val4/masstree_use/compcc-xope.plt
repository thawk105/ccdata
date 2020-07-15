reset

#set xlabel font "Courier,27"
#set ylabel font "Courier,27"
#set tics   font "Courier,27"
#set key    font "Courier,27"
#set key spacing 1.2
#
#set xlabel offset 0,-1.5
#set ylabel offset -8,0
#
#set tmargin 8
#set lmargin 15
#set bmargin 7
#set rmargin 3


set format y "%2.0t{/Symbol \264}10^{%T}"
#set format y "%1.1f"
set notitle

set grid

set autoscale x
set autoscale y

f(a) = a / 1e3
g(a) = a / 1e2
h(a) = a / 1e6

set ytics autofreq

set key outside center top horiz box
set xlabel "# Operations / Transaction"
set xtics 20
set xrange [10:100]
set terminal pdfcairo enhanced color size 5cm,3cm
set ylabel "Throughput [MTPS]"
set format y "10^{%T}"
set logscale y
set key inside nobox top right
set ylabel offset 0,-1
set output "comp_ycsbB_tuple100m_skew08_ope10-100_tps.pdf"
plot \
"result_mocc_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:(h($2)):(h($3)):(h($4)) w errorlines pt 1 title "MOCC", \
"result_ss2pl-dlr0_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:(h($2)):(h($3)):(h($4)) w errorlines pt 2 notitle , \
"result_ss2pl-dlr1_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:(h($2)):(h($3)):(h($4)) w errorlines pt 3 notitle , \

set ylabel "Abort Ratio"
set format y "%1.1f"
unset logscale y
set yrange [0:1]
set ylabel offset 0,0
set output "comp_ycsbB_tuple100m_skew08_ope10-100_ar.pdf"
plot \
"result_mocc_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:5:6:7 w errorlines pt 1 notitle , \
"result_ss2pl-dlr0_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:5:6:7 w errorlines pt 2 title "2PL-Wait", \
"result_ss2pl-dlr1_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:5:6:7 w errorlines pt 3 title "2PL-NoWait", \

set ylabel "Cache-Miss Ratio"
set output "comp_ycsbB_tuple100m_skew08_ope10-100_cm.pdf"
plot \
"result_mocc_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "MOCC", \
"result_ss2pl-dlr0_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "2PL-Wait", \
"result_ss2pl-dlr1_ycsbB_tuple100m_skew08_ope10-100.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "2PL-NoWait", \

set ylabel "Throughput [ops/trans]"
set output "comp_ycsbB_tuple1m_skew09_ope2-64_th.pdf"
set format y "%2.0t{/Symbol \264}10^{%T}"
set logscale y
set xrange [2:64]
unset yrange
plot \
"result_tictoc_ycsbB_tuple1m_skew09_ope2-64_th+.dat"using 1:(h($2)):(h($3)):(h($4)) w errorlines pt 1 title "TicToc+TH", \
"result_tictoc_ycsbB_tuple1m_skew09_ope2-64_th-.dat"using 1:(h($2)):(h($3)):(h($4)) w errorlines pt 2 title "TicToc-TH", \

set ylabel "Abort Ratio"
set format y "%1.1f"
unset logscale y
set yrange [0:1]
set output "comp_ycsbB_tuple1m_skew09_ope2-64_th_ar.pdf"
plot \
"result_tictoc_ycsbB_tuple1m_skew09_ope2-64_th+.dat"using 1:5:6:7 w errorlines pt 1 title "TicToc+TH", \
"result_tictoc_ycsbB_tuple1m_skew09_ope2-64_th-.dat"using 1:5:6:7 w errorlines pt 2 title "TicToc-TH", \

