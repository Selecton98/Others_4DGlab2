#gunzip *.gz
#nohup /home/zhoujiaqi/software/fastp-master/fastp --thread 20 -i A6556.R1.fq -o cleanA6556.R1.fq -I A6556.R2.fq -O cleanA6556.R2.fq -j A6556.fastp.json -h A6556.fastp.html &

#######################################################################

cd /data02/zhoujiaqi/ATACwxz/rawdata

cat config.clean |while read id;
do echo $id
arr=($id)
sample=${arr[0]}
####################################################

#nohup bowtie2-build GRCm38.p6.genome.fa bowtie2.index &

#bowtie2 -p 20 -x /data02/zhoujiaqi/index/bowtie2.index/bowtie2.index -1 cleanA1743.R1.fq -2 cleanA1743.R2.fq -S ../A1743/A1743.sam 2>../A1743/A1743.align.log
bowtie2 -p 20 --very-sensitive -x /data02/zhoujiaqi/index/bowtie2.index/bowtie2.index -1 cleanA1743.R1.fq -2 cleanA1743.R2.fq -S ../A1743/A1743.sam 2>../A1743/A1743.align.log

samtools view -@ 16 -u A1741.sam -o A1741.bam
samtools sort -@ 16 -O BAM A1741.bam -o A1741.sorted.bam

samtools view -h A1741.sorted.bam | python /data02/zhoujiaqi/index/ATAC-seq-master/atacseq/removeChrom.py - - chrM | samtools view -b - > A1741.sorted.filtered.2.bam  #去除线粒体


sambamba markdup --overflow-list-size 600000 --tmpdir='./' -r A1741.sorted.filtered.bam A1741.sorted.filtered.rmdup.bam  
sambamba sort A1741.sorted.filtered.rmdup.bam -o A1741.sorted.filtered.rmdup.sorted.bam
sambamba  index A1741.sorted.filtered.rmdup.sorted.bam

#samtools view -bSq 30  A1741.sorted.filtered.rmdup.sorted.bam > A1741.sorted.filtered.rmdup.sorted.MAPQ.bam #MAPQ>=30
samtools view -b  -q 10  A1741.sorted.filtered.rmdup.sorted.bam > A1741.sorted.filtered.rmdup.sorted.MAPQ.bam #MAPQ>=10
#
sambamba  index ${sample}.sorted.filtered.rmdup.sorted.MAPQ.bam 
#
samtools view -h A1741.sorted.filtered.rmdup.sorted.MAPQ.bam | python /data02/zhoujiaqi/index/ATAC-seq-master/atacseq/SAMtoBED.py -i - -o A1741.bed -x -v

macs2 callpeak  -t A1741.bed  -f BEDPE  -n A1741 -q 0.05  -g mm  --keep-dup all

done

#manually add: track type=narrowPeak

awk '{print $4"\t"$1"\t"$2"\t"$3"\t+"}' A2007_peaks.narrowPeak>A2007_homer.bed 
nohup findMotifsGenome.pl A2007_homer.bed /data02/zhoujiaqi/index/bowtie2.index/GRCm38.p6.genome.fa ./motifDir -len 8,10,12 -p 16 &

nohup findMotifsGenome.pl A12ckols.homer.bed  /data02/zhoujiaqi/index/bowtie2.index/GRCm38.p6.genome.fa ./A12ckolsmotifDir -len 8,10,12 -p 16 &
nohup findMotifsGenome.pl A12flls.homer.bed  /data02/zhoujiaqi/index/bowtie2.index/GRCm38.p6.genome.fa ./A12fllsmotifDir -len 8,10,12 -p 16 &

nohup findMotifsGenome.pl A93ckols.homer.bed  /data02/zhoujiaqi/index/bowtie2.index/GRCm38.p6.genome.fa ./A93ckolsmotifDir -len 8,10,12 -p 16 &
nohup findMotifsGenome.pl A93flls.homer.bed  /data02/zhoujiaqi/index/bowtie2.index/GRCm38.p6.genome.fa ./A93fllsmotifDir -len 8,10,12 -p 16 &

nohup findMotifsGenome.pl flup200.homer /data02/zhoujiaqi/index/bowtie2.index/GRCm38.p6.genome.fa ./flup200motifDir -len 8,10,12 -p 16 &
nohup findMotifsGenome.pl ckoup12.homer /data02/zhoujiaqi/index/bowtie2.index/GRCm38.p6.genome.fa ./ckoup12motifDir -len 8,10,12 -p 16 &

nohup findMotifsGenome.pl new_A12wt.bed /data02/zhoujiaqi/index/bowtie2.index/GRCm38.p6.genome.fa ./newA12wt_motifDir -len 8,10,12 -p 16 &
nohup findMotifsGenome.pl new_A12cko.bed /data02/zhoujiaqi/index/bowtie2.index/GRCm38.p6.genome.fa ./newA12cko_motifDir -len 8,10,12 -p 16 &


nohup annotatePeaks.pl A12flls.homer.bed  /data02/zhoujiaqi/index/bowtie2.index/GRCm38.p6.genome.fa -gtf /data02/zhoujiaqi/index/gencode.vM24.annotation.gtf -m A12flbHLH/bHLH.motif > A12flls_bHLH_2.txt &
nohup annotatePeaks.pl A12ckols.homer.bed  /data02/zhoujiaqi/index/bowtie2.index/GRCm38.p6.genome.fa -gtf /data02/zhoujiaqi/index/gencode.vM24.annotation.gtf -m NF1_A12cko.motif > A12ckols_NF1_2.txt &

nohup annotatePeaks.pl new_A12cko.bed  /data02/zhoujiaqi/index/bowtie2.index/GRCm38.p6.genome.fa -gtf /data02/zhoujiaqi/index/gencode.vM24.annotation.gtf -m newA12ckomotifdn.txt > A12cko_factor.txt &
nohup annotatePeaks.pl new_A12wt.bed  /data02/zhoujiaqi/index/bowtie2.index/GRCm38.p6.genome.fa -gtf /data02/zhoujiaqi/index/gencode.vM24.annotation.gtf -m newA12wtmotifdn.txt > A12wt_factor.txt &