reset

#set xlabel font "Courier,27"
#set ylabel font "Courier,27"
#set tics   font "Courier,27"
#set key    font "Courier,27"
#set key spacing 1
#
#set xtics  offset 0,-1
#set xlabel offset 0,-2
set ylabel offset -1,0
#
#set tmargin 8
#set lmargin 20 
#set bmargin 7
#set rmargin 7

f(a) = a / 1e6
g(a) = a / 1e2

set key outside horiz center top box

set logscale x
#set format x "%1.0t{/Symbol \264}10^{%T}"
set format x "10^{%T}"
set xlabel "GC interval[us]"

set grid

set terminal pdfcairo enhanced color size 5cm,5cm
set format y "%1.0t{/Symbol \264}10^{%T}"
set format y2 "%1.2f"
set ylabel "Throughput"
set y2label "Rate"
set y2range [0:1]
set y2tics
set autoscale y
set autoscale y2
set output "comp_cicada_ycsbA_tuple1m_gci10us-1s.pdf"
plot \
"result_cicada_ycsbA_tuple1m_gci10us-1s.dat" using 1:2:3:4 w errorlines pt 1 title "Throughput" axis x1y1 ,\
"result_cicada_ycsbA_tuple1m_gci10us-1s.dat" using 1:5:6:7 w errorlines pt 2 title "Abort rate" axis x1y2 ,\
"result_cicada_ycsbA_tuple1m_gci10us-1s.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 3 title "Cache-miss rate" axis x1y2 ,\
"result_cicada_ycsbA_tuple1m_gci10us-1s.dat" using 1:11 w errorlines pt 4 title "Write-latency rate" axis x1y2 ,\
"result_cicada_ycsbA_tuple1m_gci10us-1s.dat" using 1:12 w errorlines pt 6 title "GC-latency rate" axis x1y2 ,\

j(a) = 1 / a
i(a,b) = a * b
h(a,b) = a * b
k(a,b) = a + b
set output "comp_cicada_ycsbA_tuple1m_gci10us-1s_main-latency.pdf"
set ylabel "Latency [second]"
unset y2label
unset y2tics
set autoscale y
plot \
"result_cicada_ycsbA_tuple1m_gci10us-1s.dat" using 1:(j($2)) w errorlines pt 1 title "TX-latency" axis x1y1 ,\
"result_cicada_ycsbA_tuple1m_gci10us-1s.dat" using 1:(h(j($2),$11)) w errorlines pt 2 title "Write-latency" axis x1y1 ,\
"result_cicada_ycsbA_tuple1m_gci10us-1s.dat" using 1:(k((i(j($2),$12)),(h(j($2),$11)))) w errorlines pt 3 title "GC-latency" axis x1y1 ,\
