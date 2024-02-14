####HiC-Pro#######

#!/bin/bash
# trimlinker.sh
#env: HICPRO
# 去除linker序列，结果在 /01.trim
# BL-HiC bridge linker
names=`ls`
for name in ${names[@]};
do
cd $name
/home/zhoujiaqi/ChIA-PET2-0.9.3/bin/trimLinker -t 8 \
-A ACGCGATATCTTATC -B AGTCAGATAAGATAT \
-k 2 -m 1 -e 1 \
-n $name -o ./ \
clean${name}_R1.fq.gz clean${name}_R2.fq.gz
cd /together_sdb/zhoujiaqi/0609HIC/ANNO_XS01KF2021030087_PM-XS01KF2021030087-01_AHG3JGCCX2_2021-06-06_14-50-39/Rawdata
done

