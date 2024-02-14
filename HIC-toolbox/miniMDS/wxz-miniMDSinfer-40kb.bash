#!/bin/bash
names=`ls`
for name in ${names[@]};
do
cd /data02/zhoujiaqi/TS/HICPROCNM/model/${name}/raw/40000
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_Y_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_X_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_22_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_21_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_20_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_19_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_18_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_17_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_16_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_15_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_14_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_13_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_12_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_11_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_10_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_9_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_8_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_7_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_6_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_5_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_4_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_3_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_2_40kb.bed
python /home/zhoujiaqi/software/miniMDS-master/miniMDS-master/minimds.py ${name}_1_40kb.bed
done

