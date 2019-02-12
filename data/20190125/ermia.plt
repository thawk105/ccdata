
set logscale x
set xlabel "Database size"
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
set key    font "Courier,13"
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

set title "ERMIA"
set terminal pdfcairo enhanced color size 12cm,6cm
set output "comp_ermia_tuple100-10m_ycsbA.pdf"
plot \
"result_ermia_ycsbA_tuple100-10m.dat" using 1:(a($2), a($3), a($4)) w errorlines pt 1 title "ERMIA' (throughput)", \
"result_ermia_ycsbA_tuple100-10m_ar.dat" axis x1y2 w errorlines pt 1 title "ERMIA' (abort rate)", \
"result_ermia_ycsbA_tuple100-10m_cachemiss.dat" using 1:(b($2), b($3), b($4)) axis x1y2 w errorlines pt 1 title "ERMIA' (cache-miss rate)", \
"result_ermia-serial_ycsbA_tuple100-10m.dat" using 1:(a($2), a($3), a($4)) w errorlines pt 2 title "ERMIA (throughput)", \
"result_ermia-serial_ycsbA_tuple100-10m_ar.dat" axis x1y2 w errorlines pt 2 title "ERMIA (abort rate)", \
"result_ermia-serial_ycsbA_tuple100-10m_cachemiss.dat" using 1:(b($2), b($3), b($4)) axis x1y2 w errorlines pt 2 title "ERMIA (cache-miss rate)", \

##########

unset y2tics
unset y2label
unset logscale x
set ytics 0,2

set format y "%1.1f"
set xlabel "Thread number"
set ylabel "Throughput [tps]"

#first=system("cat result_ermia_ycsbA_tuple500.dat | awk 'NR==3 {print $2}'")
#c(a) = a * first
#set terminal pdfcairo enhanced color size 12cm,6cm
#set output "comp_ermia_tuple500_ycsbA.pdf"
#plot \
#"result_ermia_ycsbA_tuple500.dat" using 1:(a(c($1))) w errorlines pt 1 title "Ideal", \
#"result_ermia_ycsbA_tuple500.dat" using 1:(a($2), a($3), a($4)) w errorlines pt 2 title "Real", \

first=system("cat result_ermia_ycsbC_tuple500.dat | awk 'NR==3 {print $2}'")
c(a) = a * first
set terminal pdfcairo enhanced color size 12cm,6cm
set output "comp_ermia_tuple500_ycsbC.pdf"
plot \
"result_ermia_ycsbC_tuple500.dat" using 1:(a(c($1))) w errorlines pt 1 title "Ideal", \
"result_ermia_ycsbC_tuple500.dat" using 1:(a($2), a($3), a($4)) w errorlines pt 2 title "Real", \

##########
set xlabel "GC interval [use]"
set ylabel "Throughput [tps]"
set ytics 0,0.5
unset y2label
unset y2tics
set logscale x

set output "comp_ermia_tuple100-10m_gci1us-100ms_ycsbA_2d.pdf"
plot \
"result_ermia_ycsbA_tuple100_gci1us-100ms.dat" using 2:(a($3), a($4), a($5)) w errorlines pt 1 title "rec 100", \
"result_ermia_ycsbA_tuple1k_gci1us-100ms.dat" using 2:(a($3), a($4), a($5)) w errorlines pt 2 title "rec 1k", \
"result_ermia_ycsbA_tuple10k_gci1us-100ms.dat" using 2:(a($3), a($4), a($5)) w errorlines pt 3 title "rec 10k", \
"result_ermia_ycsbA_tuple100k_gci1us-100ms.dat" using 2:(a($3), a($4), a($5)) w errorlines pt 4 title "rec 100k", \
"result_ermia_ycsbA_tuple1m_gci1us-100ms.dat" using 2:(a($3), a($4), a($5)) w errorlines pt 5 title "rec 1m", \
"result_ermia_ycsbA_tuple10m_gci1us-100ms.dat" using 2:(a($3), a($4), a($5)) w errorlines pt 6 title "rec 10m", \

set ylabel "Cache-miss rate"
set ytics 0,0.1
set output "comp_ermia_tuple100-10m_gci1us-100ms_ycsbA_2d_cache-miss.pdf"
plot \
"result_ermia_ycsbA_tuple100_gci1us-100ms_cache-miss.dat" using 2:(b($3), b($4), b($5)) w errorlines pt 1 title "rec 100", \
"result_ermia_ycsbA_tuple1k_gci1us-100ms_cache-miss.dat" using 2:(b($3), b($4), b($5)) w errorlines pt 2 title "rec 1k", \
"result_ermia_ycsbA_tuple10k_gci1us-100ms_cache-miss.dat" using 2:(b($3), b($4), b($5)) w errorlines pt 3 title "rec 10k", \
"result_ermia_ycsbA_tuple100k_gci1us-100ms_cache-miss.dat" using 2:(b($3), b($4), b($5)) w errorlines pt 4 title "rec 100k", \
"result_ermia_ycsbA_tuple1m_gci1us-100ms_cache-miss.dat" using 2:(b($3), b($4), b($5)) w errorlines pt 5 title "rec 1m", \
"result_ermia_ycsbA_tuple10m_gci1us-100ms_cache-miss.dat" using 2:(b($3), b($4), b($5)) w errorlines pt 6 title "rec 10m", \

##########
set logscale x
set logscale y

set hidden3d
set pm3d
set ticslevel 0

set xlabel "Database size [records]"
set xlabel offset 0,-3
set xtics offset 0,-1
set ylabel "GC interval [us]"
set ylabel offset 3,-3
set ytics offset 2,0
set zlabel "Throughput [tps]"
set zlabel offset -7,0
set ztics 0,2
set colorbox user origin 0.9,0.6 size 0.02,0.3
set cbtics 0,0.5
unset key

set terminal pdfcairo enhanced color size 12cm,6cm
set output "comp_ermia_tuple100-10m_gci1us-100ms_ycsbA.pdf"
splot \
"result_ermia_ycsbA_tuple100-10m_gci1us-100ms.dat" using 1:2:(a($3)) w linespoints, \

##########

set zlabel "Abort rate"
set ztics 0,0.2

set terminal pdfcairo enhanced color size 12cm,6cm
set output "comp_ermia_tuple100-10m_gci1us-100ms_ycsbA_ar.pdf"
splot \
"result_ermia_ycsbA_tuple100-10m_gci1us-100ms_ar.dat" using 1:2:3 w linespoints, \

##########

set zlabel "Cache-miss rate"

set terminal pdfcairo enhanced color size 12cm,6cm
set output "comp_ermia_tuple100-10m_gci1us-100ms_ycsbA_cache-miss.pdf"
splot \
"result_ermia_ycsbA_tuple100-10m_gci1us-100ms_cache-miss.dat" using 1:2:(b($3)) w linespoints, \

