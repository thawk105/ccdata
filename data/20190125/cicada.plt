set xlabel font "Courier,17"
set xlabel offset 0,0.3

set ylabel "Throughput (M tps)"
set ylabel font "Courier,17"
set ylabel offset -2.5,0

set y2label "Rate"
set y2label font "Courier,17"
set y2label offset 3,0
set y2tics offset 3,0
set y2range [0:1]

set tics   font "Courier,17"
set key    font "Courier,17"
set title  font "Courier,17"
set key spacing 1.5

set lmargin 12
set rmargin 15
set bmargin 4

set key horiz outside center top box

#set format y "%2.0t{/Symbol \264}10^{%T}"
set format y "%1.1f"
set format y2 "%1.2f"

#set ytics 0,0.5
set autoscale y
set autoscale y2
set ytics autofreq
set y2tics autofreq
set grid

a(b) = b / 1e6
b(a) = a / 1e2

##########

set logscale x
set xlabel "Database size"

set title "Cicada"
set terminal pdfcairo enhanced color size 12cm,6cm
set output "comp_cicada_tuple100-10m_ycsbA.pdf"
plot \
"result_cicada_ycsbA_tuple100-10m.dat" using 1:(a($2), a($3), a($4)) w errorlines pt 1 title "Throughput", \
"result_cicada_ycsbA_tuple100-10m_ar.dat" axis x1y2 w errorlines pt 1 title "Abort rate", \
"result_cicada_ycsbA_tuple100-10m_cachemiss.dat" using 1:(b($2), b($3), b($4)) axis x1y2 w errorlines pt 1 title "Cache-miss rate", \

##########

unset xrange
unset y2tics
unset y2label
unset logscale x

set format y "%1.1f"
set xlabel "Thread number"

first=system("cat result_cicada_ycsbA_tuple500.dat | awk 'NR==3 {print $2}'")
c(a) = a * first
set terminal pdfcairo enhanced color size 12cm,6cm
set output "comp_cicada_tuple500_ycsbA.pdf"
plot \
"result_cicada_ycsbA_tuple500.dat" using 1:(a(c($1))) w errorlines pt 1 title "Ideal", \
"result_cicada_ycsbA_tuple500.dat" using 1:(a($2), a($3), a($4)) w errorlines pt 2 title "Real", \

##########

set logscale x
set logscale y

#set dgrid3d 30,30
#set isosamples 30
set hidden3d
set pm3d
set ticslevel 0

set xlabel "Database size [records]"
set xlabel offset 0,-3
set ylabel "GC interval [us]"
set ylabel offset 0,-3
set ytics offset 2,0
set zlabel "Throughput [tps]"
set zlabel offset -7,0
unset key

set rmargin 19

set terminal pdfcairo enhanced color size 12cm,6cm
set output "comp_cicada_tuple100-10m_gci1us-100ms_ycsbA.pdf"
splot \
"result_cicada_ycsbA_tuple100-10m_gci1us-100ms.dat" using 1:2:(a($3)) w linespoints, \

##########

set view 30,70,1,1
set format z "%1.2f"
set zlabel "Abort rate"
set terminal pdfcairo enhanced color size 12cm,6cm
set output "comp_cicada_tuple100-10m_gci1us-100ms_ycsbA_ar.pdf"
splot \
"result_cicada_ycsbA_tuple100-10m_gci1us-100ms_ar.dat" using 1:2:3 w linespoints, \

