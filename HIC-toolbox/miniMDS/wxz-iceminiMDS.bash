#!/bin/bash
names=`ls`
for name in ${names[@]};
do
cd /data02/zhoujiaqi/TS/HICPROCNM/2.linker/cleanM-naive/Clean-result/hic_results/matrix/cleanM-naive/raw/${name}
nohup /home/zhoujiaqi/software/ice --results_filename cleanM-naive_${name}_iced.matrix --max_iter 100  --filter_low_counts_perc  0.02 --filter_high_counts_perc 0 --eps 0.1 --remove-all-zeros-loci cleanM-naive_${name}.matrix &
done

