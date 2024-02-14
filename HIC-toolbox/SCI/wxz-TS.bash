#convert .hic to network
bash /home/zhoujiaqi/software/sci-master/scripts/hic2sci.sh /data02/zhoujiaqi/TS/step04_hicpro2juicebox/hicfiles/M-naive.allValidPairs.hic  ./M-naive.bed 10000
bash /home/zhoujiaqi/software/sci-master/scripts/hic2sci.sh /data02/zhoujiaqi/TS/step04_hicpro2juicebox/hicfiles/M-IgD-.allValidPairs.hic  ./M-IgD-.bed 10000

bash /home/zhoujiaqi/software/sci-master/scripts/hic2sci.sh /data02/zhoujiaqi/TS/step04_hicpro2juicebox/hicfiles/F-naive.allValidPairs.hic  ./F-naive.bed 10000
bash /home/zhoujiaqi/software/sci-master/scripts/hic2sci.sh /data02/zhoujiaqi/TS/step04_hicpro2juicebox/hicfiles/F-IgD-.allValidPairs.hic  ./F-IgD-.bed 10000

nohup bash /home/zhoujiaqi/software/sci-master/scripts/hic2sci.sh /data02/zhoujiaqi/TS/step04_hicpro2juicebox/hicfiles/Z-naive.allValidPairs.hic  ./Z-naive.bed 10000 &
nohup bash /home/zhoujiaqi/software/sci-master/scripts/hic2sci.sh /data02/zhoujiaqi/TS/step04_hicpro2juicebox/hicfiles/Z-IgD-.allValidPairs.hic  ./Z-IgD-.bed 10000 &



nohup awk   '$7 !="[Globals.java:138]" { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7 }'   ./M-naive.bed > ./M-naive.clean.bed &
nohup awk   '$7 !="[Globals.java:138]" { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7 }'   ./M-IgD-.bed > ./M-IgD-.clean.bed &

nohup awk   '$7 !="[Globals.java:138]" { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7 }'   ./F-naive.bed > ./F-naive.clean.bed &
nohup awk   '$7 !="[Globals.java:138]" { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7 }'   ./F-IgD-.bed > ./F-IgD-.clean.bed &

nohup awk   '$7 !="[Globals.java:138]" { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7 }'   ./Z-naive.bed > ./Z-nacive.clean.bed &
nohup awk   '$7 !="[Globals.java:138]" { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7 }'   ./Z-IgD-.bed > ./Z-IgD-.clean.bed &

#awk   '$1=="chrX" { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7 }'  ./Z-IgD-.clean.bed

########################################

#bin(5), name, chrom(1), strand(4), transcription start(2,3), transcription end, coding start, coding end, num exons, exon starts, exon ends, id, alt.name, coding start status (complete/incomplete), coding end status(complete,incomplete)和 exon frames。
awk   '{print $3"\t"$5-2000"\t"$5+1500"\t"$4"\t"$1}' /data02/zhoujiaqi/index/gencode.v22_refGene_awk.txt >/data02/zhoujiaqi/index/gencode.v22_refGene_TS.txt
awk   '$1 !="chrM" { print $1"\t"$2"\t"$3"\t"$4"\t"$5}'  /data02/zhoujiaqi/index/gencode.v22_refGene_TS.txt >/data02/zhoujiaqi/index/gencode.v22_refGene_TS_noM.txt


bedtools intersect -a Z-naive.clean.bed -b /data02/zhoujiaqi/index/gencode.v22_refGene_TS_noM.txt -wa -wb -F 0.75 > Z-naive.clean.OL1.bed 
awk   '{print $4"\t"$5"\t"$6"\t"$1"\t"$2"\t"$3"\t"$7"\t"$12}' Z-naive.clean.OL1.bed  > Z-naive.clean.OL1.mirror.bed 
bedtools intersect -a  Z-naive.clean.OL1.mirror.bed  -b /data02/zhoujiaqi/index/gencode.v22_refGene_TS_noM.txt -wa -wb -F 0.75 > Z-naive.clean.OL2.mirror.bed
awk   '{print $4"\t"$5"\t"$6"\t"$1"\t"$2"\t"$3"\t"$7"\t"$8 "\t"$13}' Z-naive.clean.OL2.mirror.bed  > Z-naive.clean.OL2.bed
#253668976 lines
sort Z-naive.clean.OL2.bed | uniq > Z-naive.bed
awk   '$8!=$9 {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9 }'   Z-naive.bed >Z-naive.uniq.bed
awk   '$7>10 {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9 }'   Z-naive.uniq.bed >Z-naive.uniq.10.bed
#670090  lines
awk   '$1==$4 {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$5-$2 }'   Z-naive.uniq.10.bed >Z-naive.uniq.10.near.bed #what if seperate all chromosomes?
awk   '$1!=$4 {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9}'   Z-naive.uniq.10.bed >Z-naive.uniq.10.distal.bed
awk   '$1=="chr1" && $4=="chr1"  {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$5-$2 }'   Z-naive.uniq.10.bed >Z-naive.uniq.10.chr1.bed 

awk   ' {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7}'   Z-naive.uniq.10.bed >Z-naive.uniq.10.sci
########################################
python /home/zhoujiaqi/software/sci-master/sci/sci.py --help
#sed -i "s/chrM/chr22/g" sample8-5.sci
#sed -i "s/chrX/chr20/g" sample8-5.sci
#sed -i "s/chrY/chr21/g" sample8-5.sci
python /home/zhoujiaqi/software/sci-master/sci/sci.py -n Z-naive.10 -f Z-naive.uniq.10.sci -r 10000 -g /home/zhoujiaqi/software/HiC-Pro-master/annotation/chrom_hg38_SCI.sizes -o both -k 100

awk   ' {print $8"\t"$1"\t"$2"\t"$3"\t""+"}'   Z-naive.uniq.10.bed > Z-naive.uniq.10.homer1.bed
awk   ' {print $9"\t"$4"\t"$5"\t"$6"\t""+"}'   Z-naive.uniq.10.bed > Z-naive.uniq.10.homer2.bed
cat Z-naive.uniq.10.homer1.bed Z-naive.uniq.10.homer2.bed > Z-naive.uniq.10.homer.bed
sort Z-naive.uniq.10.homer.bed | uniq > Z-naive.uniq2.10.homer.bed
nohup findMotifsGenome.pl Z-naive.uniq2.10.homer.bed /data02/zhoujiaqi/index/bowtie2index2/GRCh37.primary_assembly.genome.fa ./Z-naive -len 8,10,12 -p 16 &

#nohup annotatePeaks.pl A200ckols.homer.bed  /data02/zhoujiaqi/index/bowtie2.index/GRCm38.p6.genome.fa  -gtf /data02/zhoujiaqi/index/gencode.vM24.annotation.gtf > A200ckols.txt &
