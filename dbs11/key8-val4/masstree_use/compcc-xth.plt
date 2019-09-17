reset

#set xlabel font "Courier,27"
#set ylabel font "Courier,27"
#set tics   font "Courier,27"
#set key    font "Courier,8"
#set key spacing 1
#
#set xtics  offset 0,-1
#set xlabel offset 0,-2
#set ylabel offset -1,0
#
#set tmargin 8
#set lmargin 20 
#set bmargin 7
#set rmargin 7

f(a) = a / 1e6
g(a) = a / 1e2

set key outside horiz center top box

set autoscale x
#set format x "%1.1t{/Symbol \264}10^{%T}"
#set format x "10^{%T}"
set xlabel "# threads"
set xtics 28, 28, 224
set grid

set terminal pdfcairo enhanced color size 6cm,6cm
set format y "%1.1t{/Symbol \264}10^{%T}"
set ylabel "Throughput"
set autoscale y
set output "comp_ycsbC_tuple50_tps.pdf"
plot \
"result_mocc_ycsbC_tuple50.dat" using 1:2:3:4 w errorlines pt 1 title "MOCC" ,\
"result_silo_ycsbC_tuple50.dat" using 1:2:3:4 w errorlines pt 2 title "Silo" ,\

set ylabel "Abort Rate"
set format y "%1.2f"
set yrange [0:1]
set output "comp_ycsbC_tuple50_ar.pdf"
plot \
"result_mocc_ycsbC_tuple50.dat" using 1:5:6:7 w errorlines pt 1 title "MOCC" ,\
"result_silo_ycsbC_tuple50.dat" using 1:5:6:7 w errorlines pt 2 title "Silo" ,\

set xtics
set ylabel "Cache-Miss Rate"
set output "comp_ycsbC_tuple50_ca.pdf"
plot \
"result_mocc_ycsbC_tuple50.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 1 title "MOCC" ,\
"result_silo_ycsbC_tuple50.dat" using 1:(g($8)):(g($9)):(g($10)) w errorlines pt 2 title "Silo" ,\

