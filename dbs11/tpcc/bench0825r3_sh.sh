# bash --norc --noprofile bench0825r3.sh

threads="224 196 168 140 112 84 56 42 28 20 16 12 8 4 2 1"
cmd='numactl --localalloc ./silo.exe -extime 5 -clocks_per_us 2095'
logfile=`basename $0 .sh`.log
s=3

termchk() {
  pid=$(pgrep silo.exe)
  awk '{print;fflush()} /^throughput/ {exit}'
  kill -TERM $pid || true
}

measure() {
  (date
   echo $cmd $opt
   $cmd $opt | termchk
   date) | tee -a $logfile
}

export LANG=C
export MIMALLOC_LARGE_OS_PAGES=1
export MIMALLOC_RESERVE_HUGE_OS_PAGES=20

for j in {1..5}; do
  for i in $threads; do
    opt="-num_wh $i -thread_num $i"
    measure
    sleep $s
  done

  for i in $threads; do
    opt="-num_wh 4 -thread_num $i"
    measure
    sleep $s
  done

  for i in $threads; do
    opt="-num_wh 1 -thread_num $i"
    measure
    sleep $s
  done
done
