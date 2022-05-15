#122,124,126,127
#12cko3,12wt3
#932,934,935,936

#93cko3,93wt3
gunzip *.gz

nohup /home/zhoujiaqi/software/fastp-master/fastp --thread 20 -i R93wt3_R1.fq -o cleanR93wt3.R1.fq -I R93wt3_R2.fq -O cleanR93wt3.R2.fq -j R93wt3.fastp.json -h R93wt3.fastp.html &

#nohup STAR --runMode genomeGenerate --genomeDir /data02/zhoujiaqi/index/STAR-index --genomeFastaFiles /data02/zhoujiaqi/index/GRCm38.p6.genome.fa --sjdbOverhang 100 --sjdbGTFfile /data02/zhoujiaqi/index/gencode.vM24.annotation.gtf --runThreadN 32 &


#STAR \
--readFilesIn ${sample}.1.fastq ${sample}.2.fastq  \
--alignIntronMax 1000000 \
--alignIntronMin 20 \
--alignMatesGapMax 1000000 \
--alignSJDBoverhangMin 1 \
--alignSJoverhangMin 8 \
--alignSoftClipAtReferenceEnds Yes \
--chimJunctionOverhangMin 15 \
--chimMainSegmentMultNmax 1 \
--chimOutType Junctions SeparateSAMold \
--chimSegmentMin 15 \
--genomeDir  /Share2/home/zhuting/ShiYue/TCGA-index \
--genomeLoad NoSharedMemory \
--limitSjdbInsertNsj 1200000 \
--outFileNamePrefix ${sample} \
--outFilterIntronMotifs None \
--outFilterMatchNminOverLread 0.33 \
--outFilterMismatchNmax 999 \
--outFilterMismatchNoverLmax 0.1 \
--outFilterMultimapNmax 20 \
--outFilterScoreMinOverLread 0.33 \
--outFilterType BySJout \
--outSAMattributes NH HI AS nM NM ch \
--outSAMstrandField intronMotif \
--outSAMtype SAM \
--outSAMunmapped Within \
--quantMode TranscriptomeSAM GeneCounts \
--runThreadN 32 \
--twopassMode Basic


nohup STAR \
--readFilesIn cleanR93cko3.R1.fq cleanR93cko3.R2.fq  \
--chimOutType Junctions SeparateSAMold \
--genomeDir  /data02/zhoujiaqi/index/STAR-index \
--outFileNamePrefix ../RNAresult/R93cko3/R93cko3 \
--outFilterType BySJout \
--outSAMattributes NH HI AS nM NM ch \
--outSAMstrandField intronMotif \
--outSAMtype SAM \
--outSAMunmapped Within \
--quantMode TranscriptomeSAM GeneCounts \
--runThreadN 20 \
--twopassMode Basic &

#########################################
nohup htseq-count \
-f sam \
-r pos \
-s no \
-a 10 \
-t exon \
-i gene_id \
-m intersection-nonempty \
R2438Aligned.out.sam \
/data02/zhoujiaqi/index/gencode.vM24.annotation.gtf > R2438.htseq.count 2> R2438.htseq.log &

#######################################

nohup /home/zhoujiaqi/software/subread-2.0.0-Linux-x86_64/bin/featureCounts -p -t exon -g gene_id -T 20 \
-a /data02/zhoujiaqi/index/gencode.vM24.annotation.gtf \
-o all.mRNA.count  ./*/*Aligned.out.sam> mRNA.all.log &


nohup /home/zhoujiaqi/software/subread-2.0.0-Linux-x86_64/bin/featureCounts -p -t exon -g gene_id -T 20 \
-a /data02/zhoujiaqi/index/gencode.vM24.annotation.gtf \
-o R93.mRNA.count  ./R93*/*Aligned.out.sam> mRNA.R93.log &

