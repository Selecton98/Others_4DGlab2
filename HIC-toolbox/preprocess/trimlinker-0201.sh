####HiC-Pro#######

#!/bin/bash
# trimlinker.sh
# 去除linker序列，结果在 /01.trim
# BL-HiC bridge linker
cd /data02/zhoujiaqi/TS/HICPROCNM/2.linker
names=`ls`
cd /data02/zhoujiaqi/TS/HICPROCNM/1.fastp
for name in ${names[@]};
do
/data02/tguo/ChIA-PET2-0.9.3/bin/trimLinker -t 16 \
-A ACGCGATATCTTATC -B AGTCAGATAAGATAT \
-k 2 -m 1 -e 1 \
-n $name -o /data02/zhoujiaqi/TS/HICPROCNM/2.linker/${name} \
${name}_R1.fq.gz ${name}_R2.fq.gz
done

