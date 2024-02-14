#!/bin/bash
names=`ls`
for name in ${names[@]};
do
cd /data02/zhoujiaqi/hic_NSPC1/model/2-4/${name}
nohup /home/zhoujiaqi/software/ice --results_filename 2-4_${name}_iced.matrix --max_iter 100  --filter_low_counts_perc  0.02 --filter_high_counts_perc 0 --eps 0.1 --remove-all-zeros-loci 2-4_${name}.matrix &
done

