####HiC-Pro#######

#!/bin/bash
# trimlinker.sh
# 去除linker序列，结果在 /01.trim
# BL-HiC bridge linker
cd /data02/zhoujiaqi/hic_NSPC1/datals/
names=`ls`
for name in ${names[@]};
do
cd /data02/zhoujiaqi/hic_NSPC1/rawdata/
/data02/tguo/ChIA-PET2-0.9.3/bin/trimLinker -t 8 \
-A ACGCGATATCTTATC -B AGTCAGATAAGATAT \
-k 2 -m 1 -e 1 \
-n $name -o /data02/zhoujiaqi/hic_NSPC1/Cleandata/ \
clean${name}_R1.fq.gz clean${name}_R2.fq.gz
cd ..
done

