set xlabel "Number of Tuples"

set xlabel font "Courier,20"
set ylabel font "Courier,20"
set tics   font "Courier,20"
set key    font "Courier,20"

set xlabel offset 0,-1
set logscale x
set logscale y

set lmargin 14
set rmargin 3
set bmargin 6

set key horiz outside center top box
set key spacing 1.3

set terminal pdfcairo enhanced color size 16cm,9cm
set output "silo_l1cache_all.pdf"
plot "result_silo_r10_L1-dcache-loads.dat" w errorlines title "loads, read only ", "result_silo_r10_L1-dcache-load-misses.dat" w errorlines title "load-misses, read only", "result_silo_r8_L1-dcache-loads.dat" w errorlines title "loads, read 80\%", "result_silo_r8_L1-dcache-load-misses.dat" w errorlines title "load-misses, read 80\%", "result_silo_r5_L1-dcache-loads.dat" w errorlines title "loads, read 50\%", "result_silo_r5_L1-dcache-load-misses.dat" w errorlines title "load-misses, read 50\%", "result_silo_r2_L1-dcache-loads.dat" w errorlines title "loads, read 20\%", "result_silo_r2_L1-dcache-load-misses.dat" w errorlines title "load-misses, read 20\%", "result_silo_r0_L1-dcache-loads.dat" w errorlines title "loads, read 0\%", "result_silo_r0_L1-dcache-load-misses.dat" w errorlines title "load-misses, read 0\%"
set size 1,1

set terminal pdfcairo enhanced color size 16cm,9cm
set output "cicada_l1cache_all.pdf"
plot "result_cicada_r10_L1-dcache-loads.dat" w errorlines title "loads, read only", "result_cicada_r10_L1-dcache-load-misses.dat" w errorlines title "load-misses, read only", "result_cicada_r8_L1-dcache-loads.dat" w errorlines title "loads, read 80\%", "result_cicada_r8_L1-dcache-load-misses.dat" w errorlines title "load-misses, read 80\%", "result_cicada_r5_L1-dcache-loads.dat" w errorlines title "loads, read 50\%", "result_cicada_r5_L1-dcache-load-misses.dat" w errorlines title "load-misses, read 50\%", "result_cicada_r2_L1-dcache-loads.dat" w errorlines title "loads, read 20\%", "result_cicada_r2_L1-dcache-load-misses.dat" w errorlines title "load-misses, read 20\%", "result_cicada_r0_L1-dcache-loads.dat" w errorlines title "loads, read 0\%", "result_cicada_r0_L1-dcache-load-misses.dat" w errorlines title "load-misses, read 0\%"

