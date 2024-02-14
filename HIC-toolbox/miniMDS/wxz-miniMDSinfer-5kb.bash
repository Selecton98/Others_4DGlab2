#!/bin/bash
names=`ls`
for name in ${names[@]};
do
cd /data02/zhoujiaqi/TS/HICPROCNM/model/${name}/raw/5000
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_Y_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_X_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_22_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_21_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_20_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_19_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_18_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_17_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_16_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_15_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_14_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_13_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_12_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_11_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_10_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_9_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_8_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_7_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_6_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_5_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_4_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_3_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_2_5kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_1_5kb.bed
done

