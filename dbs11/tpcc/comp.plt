reset

set autoscale x
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
