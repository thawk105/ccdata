reset

#set xlabel font "Courier,27"
#set ylabel font "Courier,27"
#set tics   font "Courier,27"
#set key    font "Courier,8"
#set key spacing 1
#
#set xtics  offset 0,-1
#set xlabel offset 0,-2
#set ylabel offset -0.6,-1
#
#set tmargin 8
#set lmargin 20 
#set bmargin 7
#set rmargin 7

#m(a) = a / 1e6
#h(a) = a / 1e2

#set key right bottom

set autoscale x
#set format x "%1.1t{/Symbol \264}10^{%T}"
#set format x "10^{%T}"
#set xtics 56, 56, 224
set grid

set terminal pdfcairo enhanced color size 10cm,5cm
set format y "%1.1f"
set ytics 0.1
set xlabel "# Threads" font "Arial,15" 
set ylabel "Throughput [MTPS]" font "Arial,15"
set tics   font "Arial,15"
set autoscale y
set key font "Arial,15"
set output "comp_w1.pdf"
plot \
"ccb.dat"       using 1:2 w lp title "CCBench",\
"dbx1000.dat"   using 1:2 w lp title "DBx1000",\
"dbx1000-c.dat" using 1:2 w lp title "DBx1000(c)",\

set ytics 0.25
set output "comp_w4.pdf"
plot \
"ccb.dat"       using 1:3 w lp title "CCBench",\
"dbx1000.dat"   using 1:3 w lp title "DBx1000",\
"dbx1000-c.dat" using 1:3 w lp title "DBx1000(c)",\

set ytics 4
set output "comp_w_eq_th.pdf"
plot \
"ccb.dat"       using 1:4 w lp title "CCBench",\
"dbx1000.dat"   using 1:4 w lp title "DBx1000",\
"dbx1000-c.dat" using 1:4 w lp title "DBx1000(c)",\
