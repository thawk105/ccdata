reset

#set xlabel font "Courier,17"
#set ylabel font "Courier,17"
#set tics   font "Courier,17"
#set key    font "Courier,17"
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

#set format x "%1.0t{/Symbol \264}10^{%T}"
set format x "10^{%T}"
set xlabel "GC interval[us]"

set grid

set terminal pdfcairo enhanced color size 10cm,10cm
set format y "%1.1t{/Symbol \264}10^{%T}"
set format y2 "%1.1t{/Symbol \264}10^{%T}"
set ylabel "Throughput [tps]"
#set y2label "Rate"
#set y2range [0:1]
set y2label "Max resident set size [KB]"
set y2tics
set autoscale y
set autoscale y2
set logscale x
set output "comp_cicada-inline_ycsbA_tuple1m_gci10us-1s.pdf"
plot \
"result_cicada_ycsbA_tuple1m_gci10us-1s.dat" using 1:2:3:4 w errorlines pt 1 title "Throughput" axis x1y1 ,\
"result_cicada_ycsbA_tuple1m_gci10us-1s.dat" using 1:16 w lp pt 2 title "Memory consumption" axis x1y2 ,\
"result_cicada-ninline_ycsbA_tuple1m_gci10us-1s.dat" using 1:2:3:4 w errorlines pt 1 title "Throughput (no inlining)" axis x1y1 ,\
"result_cicada-ninline_ycsbA_tuple1m_gci10us-1s.dat" using 1:16 w lp pt 2 title "Memory consumption (no inlining)" axis x1y2 ,\

set format y "%1.1t{/Symbol \264}10^{%T}"
set ylabel "# Version allocation"
unset y2tics
unset y2label
set output "comp_cicada-inline_ycsbA_tuple1m_gci10us-1s_version-allocation.pdf"
plot \
"result_cicada_ycsbA_tuple1m_gci10us-1s.dat" using 1:17 w lp pt 1 title "Memory allocation" axis x1y1 ,\
"result_cicada_ycsbA_tuple1m_gci10us-1s.dat" using 1:18 w lp pt 2 title "Reuse" axis x1y1 ,\
"result_cicada-ninline_ycsbA_tuple1m_gci10us-1s.dat" using 1:17 w errorlines pt 3 title "Memory allocation (no inlining)" axis x1y1 ,\
"result_cicada-ninline_ycsbA_tuple1m_gci10us-1s.dat" using 1:18 w errorlines pt 4 title "Reuse (no inlining)" axis x1y1 ,\

unset logscale x

#set xlabel font "Courier,27"
#set ylabel font "Courier,27"
#set tics   font "Courier,27"
#set key    font "Courier,27"
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
h(a) = 1000000000 / a
i(a,b) = a * b
j(a,b,c,d,e,f) = a - b - c - d - e - f
k(a,b,c,d,e) = a - b - c - d - e

set key outside horiz center top box

set format x "10^{%T}"
set format x "%1.0t{/Symbol \264}10^{%T}"
set format y2 "%1.1f"

set grid

unset format y
unset xlabel
set output "comp_cicada_ycsbA_tuple1m_gci10us-1s_main-latency.pdf"
set ylabel "Latency [ns]"
set style histogram rowstacked
set boxwidth 0.5 relative
set style fill solid border lc rgb "black"
plot \
"result_cicada_ycsbA_tuple1m_gci10us-1s.dat" using (i(h($2),$11)):xticlabels(1) w histogram title "Workload generation",\
"result_cicada_ycsbA_tuple1m_gci10us-1s.dat" using (i(h($2),$12)) w histogram title "Read operation",\
"result_cicada_ycsbA_tuple1m_gci10us-1s.dat" using (i(h($2),$13)) w histogram title "Write operation",\
"result_cicada_ycsbA_tuple1m_gci10us-1s.dat" using (i(h($2),$14)) w histogram title "Validation",\
"result_cicada_ycsbA_tuple1m_gci10us-1s.dat" using (i(h($2),$15)) w histogram title "GC",\
"result_cicada_ycsbA_tuple1m_gci10us-1s.dat" using (j(h($2),i(h($2),$11),i(h($2),$12),i(h($2),$13),i(h($2),$14),i(h($2),$15))) w histogram title "other work"

set output "comp_cicada-silo_ycsbA_tuple100m_gci10us_224th_main-latency.pdf"
set style histogram rowstacked
set boxwidth 0.5 relative
set style fill solid border lc rgb "black"
plot \
"result_cicada-silo_ycsbA_tuple100m_gci10us_224th.dat" using (i(h($2),$11)):xticlabels(1) w histogram title "Workload generation",\
"result_cicada-silo_ycsbA_tuple100m_gci10us_224th.dat" using (i(h($2),$12)) w histogram title "Read operation",\
"result_cicada-silo_ycsbA_tuple100m_gci10us_224th.dat" using (i(h($2),$13)) w histogram title "Write operation",\
"result_cicada-silo_ycsbA_tuple100m_gci10us_224th.dat" using (i(h($2),$14)) w histogram title "Validation",\
"result_cicada-silo_ycsbA_tuple100m_gci10us_224th.dat" using (i(h($2),$15)) w histogram title "GC",\
"result_cicada-silo_ycsbA_tuple100m_gci10us_224th.dat" using (j(h($2),i(h($2),$11),i(h($2),$12),i(h($2),$13),i(h($2),$14),i(h($2),$15))) w histogram title "other work",\

set output "comp_cicada-silo_ycsbB_tuple100m_gci10us_224th_main-latency.pdf"
set style histogram rowstacked
set boxwidth 0.5 relative
set style fill solid border lc rgb "black"
plot \
"result_cicada-silo_ycsbB_tuple100m_gci10us_224th.dat" using (i(h($2),$11)):xticlabels(1) w histogram title "Workload generation",\
"result_cicada-silo_ycsbB_tuple100m_gci10us_224th.dat" using (i(h($2),$12)) w histogram title "Read operation",\
"result_cicada-silo_ycsbB_tuple100m_gci10us_224th.dat" using (i(h($2),$13)) w histogram title "Write operation",\
"result_cicada-silo_ycsbB_tuple100m_gci10us_224th.dat" using (i(h($2),$14)) w histogram title "Validation",\
"result_cicada-silo_ycsbB_tuple100m_gci10us_224th.dat" using (i(h($2),$15)) w histogram title "GC",\
"result_cicada-silo_ycsbB_tuple100m_gci10us_224th.dat" using (j(h($2),i(h($2),$11),i(h($2),$12),i(h($2),$13),i(h($2),$14),i(h($2),$15))) w histogram title "other work",\

set output "comp_cicada-silo-part_ycsbA_tuple100m_gci10us_224th_main-latency.pdf"
set style histogram rowstacked
set boxwidth 0.5 relative
set style fill solid border lc rgb "black"
plot \
"result_cicada-silo-part_ycsbA_tuple100m_224th.dat" using (i(h($2),$11)):xticlabels(1) w histogram title "Workload generation",\
"result_cicada-silo-part_ycsbA_tuple100m_224th.dat" using (i(h($2),$12)) w histogram title "Read operation",\
"result_cicada-silo-part_ycsbA_tuple100m_224th.dat" using (i(h($2),$13)) w histogram title "Write operation",\
"result_cicada-silo-part_ycsbA_tuple100m_224th.dat" using (i(h($2),$14)) w histogram title "Validation",\
"result_cicada-silo-part_ycsbA_tuple100m_224th.dat" using (i(h($2),$15)) w histogram title "other work",\

set output "comp_cicada-silo-part_ycsbB_tuple100m_gci10us_224th_main-latency.pdf"
set style histogram rowstacked
set boxwidth 0.5 relative
set style fill solid border lc rgb "black"
plot \
"result_cicada-silo-part_ycsbB_tuple100m_224th.dat" using (i(h($2),$11)):xticlabels(1) w histogram title "Workload generation",\
"result_cicada-silo-part_ycsbB_tuple100m_224th.dat" using (i(h($2),$12)) w histogram title "Read operation",\
"result_cicada-silo-part_ycsbB_tuple100m_224th.dat" using (i(h($2),$13)) w histogram title "Write operation",\
"result_cicada-silo-part_ycsbB_tuple100m_224th.dat" using (i(h($2),$14)) w histogram title "Validation",\
"result_cicada-silo-part_ycsbB_tuple100m_224th.dat" using (j(h($2),i(h($2),$11),i(h($2),$12),i(h($2),$13),i(h($2),$14),i(h($2),$15))) w histogram title "other work",\
