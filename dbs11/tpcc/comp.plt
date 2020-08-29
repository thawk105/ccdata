reset

set autoscale x
set grid

set terminal pdfcairo enhanced color size 10cm,5cm
set format y "%1.1f"
set xlabel "# Threads" font "Arial,15" 
set ylabel "Throughput [MTPS]" font "Arial,15"
set tics   font "Arial,15"
set autoscale y
set key font "Arial,15"
set ytics 0.2
set output "comp_no-insert_w1.pdf"
plot \
"ccb.dat"       using 1:2 w lp title "CCBench",\
"dbx1000.dat"   using 1:2 w lp title "DBx1000",\
"dbx1000-c.dat" using 1:2 w lp title "DBx1000(c)",\

set ytics 0.5
set output "comp_no-insert_w4.pdf"
plot \
"ccb.dat"       using 1:3 w lp notitle ,\
"dbx1000.dat"   using 1:3 w lp notitle ,\
"dbx1000-c.dat" using 1:3 w lp notitle ,\

set ytics 5
set output "comp_no-insert_w_eq_th.pdf"
plot \
"ccb.dat"       using 1:4 w lp notitle ,\
"dbx1000.dat"   using 1:4 w lp notitle ,\
"dbx1000-c.dat" using 1:4 w lp notitle ,\

set xrange [0:28]
set ytics 0.1
set output "comp_no-insert_w1_x0-50.pdf"
plot \
"ccb.dat"       using 1:2 w lp notitle ,\
"dbx1000.dat"   using 1:2 w lp notitle ,\
"dbx1000-c.dat" using 1:2 w lp notitle ,\

set ytics 0.5
set output "comp_no-insert_w4_x0-50.pdf"
plot \
"ccb.dat"       using 1:3 w lp notitle ,\
"dbx1000.dat"   using 1:3 w lp notitle ,\
"dbx1000-c.dat" using 1:3 w lp notitle ,\

set ytics 4
set output "comp_no-insert_w_eq_th_x0-50.pdf"
plot \
"ccb.dat"       using 1:4 w lp notitle ,\
"dbx1000.dat"   using 1:4 w lp notitle ,\
"dbx1000-c.dat" using 1:4 w lp notitle ,\

set autoscale x
set ytics 0.1
set output "comp_insert_w1.pdf"
plot \
"ccb.dat"       using 1:5 w lp title "CCBench",\
"dbx1000.dat"   using 1:5 w lp title "DBx1000",\
"dbx1000-c.dat" using 1:5 w lp title "DBx1000(c)",\

set ytics 0.25
set output "comp_insert_w4.pdf"
plot \
"ccb.dat"       using 1:6 w lp notitle ,\
"dbx1000.dat"   using 1:6 w lp notitle ,\
"dbx1000-c.dat" using 1:6 w lp notitle ,\

set ytics 4
set output "comp_insert_w_eq_th.pdf"
plot \
"ccb.dat"       using 1:7 w lp notitle ,\
"dbx1000.dat"   using 1:7 w lp notitle ,\
"dbx1000-c.dat" using 1:7 w lp notitle ,\

set xrange [0:28]
set ytics 0.1
set output "comp_insert_w1_x0-50.pdf"
plot \
"ccb.dat"       using 1:5 w lp notitle ,\
"dbx1000.dat"   using 1:5 w lp notitle ,\
"dbx1000-c.dat" using 1:5 w lp notitle ,\

set ytics 0.25
set output "comp_insert_w4_x0-50.pdf"
plot \
"ccb.dat"       using 1:6 w lp notitle ,\
"dbx1000.dat"   using 1:6 w lp notitle ,\
"dbx1000-c.dat" using 1:6 w lp notitle ,\

set ytics 2
set output "comp_insert_w_eq_th_x0-50.pdf"
plot \
"ccb.dat"       using 1:7 w lp notitle ,\
"dbx1000.dat"   using 1:7 w lp notitle ,\
"dbx1000-c.dat" using 1:7 w lp notitle ,\

set autoscale x
set autoscale y
set xlabel "# Warehouse" font "Arial,15" 
set format y "%1.0f"
set ytics 5
set key right inside bottom
set output "comp_no-insert_sweep_wh.pdf"
plot \
"ccb_sweep_wh.dat"       using 1:2 w lp title "CCBench-224th",\
"dbx1000_sweep_wh.dat"   using 1:2 w lp title "DBx1000-224th",\
"dbx1000-c_sweep_wh.dat" using 1:2 w lp title "DBx1000(c)-96th",\

set ytics 2
set key right inside top
set output "comp_insert_sweep_wh.pdf"
plot \
"ccb_sweep_wh.dat"       using 1:3 w lp title "CCBench-224th",\
"dbx1000_sweep_wh.dat"   using 1:3 w lp title "DBx1000-224th",\
"dbx1000-c_sweep_wh.dat" using 1:3 w lp title "DBx1000(c)-96th",\


