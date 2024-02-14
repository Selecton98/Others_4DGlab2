#!/bin/bash
bash /home/zhoujiaqi/software/sci-master/scripts/hic2scimo2.sh /data02/zhoujiaqi/TS/step04_hicpro2juicebox/hicfiles/F-naive.allValidPairs.hic  ./F-naive.bed 5000
bash /home/zhoujiaqi/software/sci-master/scripts/hic2scimo2.sh /data02/zhoujiaqi/TS/step04_hicpro2juicebox/hicfiles/F-IgD-.allValidPairs.hic  ./F-IgD-.bed 5000
nohup bash /home/zhoujiaqi/software/sci-master/scripts/hic2scimo2.sh /data02/zhoujiaqi/TS/step04_hicpro2juicebox/hicfiles/M-naive.allValidPairs.hic  ./M-naive.bed 5000 &
nohup bash /home/zhoujiaqi/software/sci-master/scripts/hic2scimo2.sh /data02/zhoujiaqi/TS/step04_hicpro2juicebox/hicfiles/M-IgD-.allValidPairs.hic  ./M-IgD-.bed 5000 &
nohup bash /home/zhoujiaqi/software/sci-master/scripts/hic2scimo2.sh /data02/zhoujiaqi/TS/step04_hicpro2juicebox/hicfiles/Z-naive.allValidPairs.hic  ./Z-naive.bed 5000 &
nohup bash /home/zhoujiaqi/software/sci-master/scripts/hic2scimo2.sh /data02/zhoujiaqi/TS/step04_hicpro2juicebox/hicfiles/Z-IgD-.allValidPairs.hic  ./Z-IgD-.bed 5000 &

nohup awk   '$7 !="[Globals.java:138]" { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7 }'   ./F-naive.bed > ./F-naive.clean.bed &
nohup awk   '$7 !="[Globals.java:138]" { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7 }'   ./Z-naive.bed > ./Z-naive.clean.bed &
nohup awk   '$7 !="[Globals.java:138]" { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7 }'   ./Z-IgD-.bed > ./Z-IgD-.clean.bed &
nohup awk   '$7 !="[Globals.java:138]" { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7 }'   ./M-naive.bed > ./M-naive.clean.bed &
nohup awk   '$7 !="[Globals.java:138]" { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7 }'   ./M-IgD-.bed > ./M-IgD-.clean.bed &
nohup awk   '$7 !="[Globals.java:138]" { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7 }'   ./F-IgD-.bed > ./F-IgD-.clean.bed &

bedtools intersect -a Z-naive.clean.bed -b /data02/zhoujiaqi/index/gencode.v22_refGene_TS_noM.txt -wa -wb -F 0.75 > Z-naive.clean.OL1.bed
awk   '{print $4"\t"$5"\t"$6"\t"$1"\t"$2"\t"$3"\t"$7"\t"$12}' 	Z-naive.clean.OL1.bed  > Z-naive.clean.OL1.mirror.bed 
bedtools intersect -a  Z-naive.clean.OL1.mirror.bed  -b /data02/zhoujiaqi/index/gencode.v22_refGene_TS_noM.txt -wa -wb -F 0.75 > Z-naive.clean.OL2.mirror.bed
awk   '{print $4"\t"$5"\t"$6"\t"$1"\t"$2"\t"$3"\t"$7"\t"$8 "\t"$13}' Z-naive.clean.OL2.mirror.bed  > Z-naive.clean.OL2.bed
sort Z-naive.clean.OL2.bed | uniq > Z-naive.bed
awk   '$8!=$9 {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9 }'   Z-naive.bed >Z-naive.uniq.bed
awk   '$7>10 {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9 }'   Z-naive.uniq.bed >Z-naive.uniq.10.bed
awk   '$1!=$4 {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9}'   Z-naive.uniq.10.bed >Z-naive.uniq.10.distal.bed

##
awk   '$1=="chrX" || $4=="chrX"  {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$5-$2 }'    Z-naive.uniq.10.bed >Z-naive.uniq.10.chrX.bed 
awk   '$1=="chrX" || $4=="chrX"  {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$5-$2 }'    Z-naive.uniq.bed >Z-naive.uniq.chrX.bed 
##
awk   '$1=="chrX" || $4=="chrX"  {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$5-$2 }'    F-naive.uniq.10.bed >F-naive.uniq.10.chrX.bed 
awk   '$1=="chrX" || $4=="chrX"  {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$5-$2 }'    F-naive.uniq.bed >F-naive.uniq.chrX.bed 
##
awk   '$1=="chrX" || $4=="chrX"  {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$5-$2 }'    M-naive.uniq.10.bed >M-naive.uniq.10.chrX.bed 
awk   '$1=="chrX" || $4=="chrX"  {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$5-$2 }'    M-naive.uniq.bed >M-naive.uniq.chrX.bed 
##
awk   '$1=="chrX" || $4=="chrX"  {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$5-$2 }'    Z-IgD-.uniq.10.bed >Z-IgD-.uniq.10.chrX.bed 
awk   '$1=="chrX" || $4=="chrX"  {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$5-$2 }'    Z-IgD-.uniq.bed >Z-IgD-.uniq.chrX.bed 
##
awk   '$1=="chrX" || $4=="chrX"  {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$5-$2 }'    F-IgD-.uniq.10.bed >F-IgD-.uniq.10.chrX.bed 
awk   '$1=="chrX" || $4=="chrX"  {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$5-$2 }'    F-IgD-.uniq.bed >F-IgD-.uniq.chrX.bed 
##
awk   '$1=="chrX" || $4=="chrX"  {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$5-$2 }'    M-IgD-.uniq.10.bed >M-IgD-.uniq.10.chrX.bed 
awk   '$1=="chrX" || $4=="chrX"  {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$5-$2 }'    M-IgD-.uniq.bed >M-IgD-.uniq.chrX.bed 
##


