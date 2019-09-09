set xlabel "key"

set ylabel "Rate"

set ytics autofreq
set grid

set tmargin 5

set key font "Courier,10"

set logscale y
set format y "%1.2f"
set xrange [0:1000]
set xtics 0,500,1000
set terminal pdfcairo enhanced color size 5cm,5cm
set output "zipf.pdf"
plot \
 "result_zipf_length1k_skew099.dat" using 1:2 w l title "skew 0.99", \
 "result_zipf_length1k_skew099_2.dat" using 1:2 w l title "skew 0.99-2", \

