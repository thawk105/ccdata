set xlabel "Number of Read Request"

set xlabel font "Courier,12"
set tics   font "Courier,12"
set key    font "Courier,12"

set autoscale x
set logscale y

set key horiz outside center top box
set key spacing 1.5

set terminal pdfcairo enhanced color size 6cm,3cm
set output "ermia_r0-10_cache-references-misses.pdf"
plot "result_ermia_r0-10_cache-references.dat" w errorlines title "cache-references", "result_ermia_r0-10_cache-misses.dat" w errorlines title "cache-misses"

