python /home/zhoujiaqi/software/Subread_to_DEXSeq-master/dexseq_prepare_annotation2.py -f featurecounts.v22.gtf /data02/zhoujiaqi/index/gencode.v22.annotation.gtf dexseq_counts.v22.gff


python /home/zhoujiaqi/software/Subread_to_DEXSeq-master/dexseq_prepare_annotation2.py -r no -f featurecounts.v21.gtf /data02/zhoujiaqi/index/gencode.v21.annotation.gtf dexseq_counts.v21.gff


#pip install HTSeq
#Successfully installed HTSeq-0.12.4 numpy-1.18.3 pysam-0.15.4


nohup /home/zhoujiaqi/software/subread-2.0.0-Linux-x86_64/bin/featureCounts -f -O -s 2 -p -T 20 \
-F GTF -a featurecounts.v22.gtf \
-o all.dex.count A1.snp.bam A2.snp.bam A3.snp.bam A4.snp.bam A7.snp.bam A8.snp.bam A9.snp.bam A11.snp.bam T1.snp.bam T2.snp.bam T3.snp.bam T4.snp.bam T7.snp.bam T8.snp.bam T9.snp.bam T11.snp.bam 2> all.log &

nohup /home/zhoujiaqi/software/subread-2.0.0-Linux-x86_64/bin/featureCounts -f -O -s 2 -p -T 20 \
-F GTF -a /data02/zhoujiaqi/index/featurecounts.v21.gtf \
-o all.dex.count A1.snp.bam A2.snp.bam A3.snp.bam A4.snp.bam A7.snp.bam A8.snp.bam A9.snp.bam A11.snp.bam T1.snp.bam T2.snp.bam T3.snp.bam T4.snp.bam T7.snp.bam T8.snp.bam T9.snp.bam T11.snp.bam 2> all.log &


##################################################################################


python /home/zhoujiaqi/software/Subread_to_DEXSeq-master/dexseq_prepare_annotation2.py -f featurecounts.vM24.gtf gencode.vM24.annotation.gtf dexseq_counts.vM24.gff

nohup samtools view -@ 16 -u *Aligned.out.sam -o Aligned.out.bam &

nohup /home/zhoujiaqi/software/subread-2.0.0-Linux-x86_64/bin/featureCounts -f -O -s 2 -p -T 20 \
-F GTF -a /data02/zhoujiaqi/index/featurecounts.vM24.gtf \
-o all.dex.count ./R1741STAR/Aligned.out.bam ./R1744STAR/Aligned.out.bam ./R2002STAR/Aligned.out.bam ./R2004STAR/Aligned.out.bam ./R1742STAR/Aligned.out.bam ./R1745STAR/Aligned.out.bam ./R2001STAR/Aligned.out.bam ./R2003STAR/Aligned.out.bam> all.log &

1425 2413