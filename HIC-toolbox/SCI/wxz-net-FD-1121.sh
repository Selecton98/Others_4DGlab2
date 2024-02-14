#!/bin/bash 


bedtools intersect -a F-IgD-.clean.bed -b /data02/zhoujiaqi/index/gencode.v22_refGene_TS_noM.txt -wa -wb -F 0.75 > F-IgD-.clean.OL1.bed
awk   '{print $4"\t"$5"\t"$6"\t"$1"\t"$2"\t"$3"\t"$7"\t"$12}' 	F-IgD-.clean.OL1.bed  > F-IgD-.clean.OL1.mirror.bed 
bedtools intersect -a  F-IgD-.clean.OL1.mirror.bed  -b /data02/zhoujiaqi/index/gencode.v22_refGene_TS_noM.txt -wa -wb -F 0.75 > F-IgD-.clean.OL2.mirror.bed
awk   '{print $4"\t"$5"\t"$6"\t"$1"\t"$2"\t"$3"\t"$7"\t"$8 "\t"$13}' F-IgD-.clean.OL2.mirror.bed  > F-IgD-.clean.OL2.bed
sort F-IgD-.clean.OL2.bed | uniq > F-IgD-.bed
awk   '$8!=$9 {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9 }'   F-IgD-.bed >F-IgD-.uniq.bed
awk   '$7>10 {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9 }'   F-IgD-.uniq.bed >F-IgD-.uniq.10.bed
awk   '$1!=$4 {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9}'   F-IgD-.uniq.10.bed >F-IgD-.uniq.10.distal.bed