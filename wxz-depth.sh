
#!/bin/bash
#env:STAR
names=`ls`
for name in ${names[@]};
do
/together_sdc/zhoujiaqi/software/bwa-0.7.3a/bwa mem -t 8 //together_sdc/zhoujiaqi/index/bwamm10/GRCm38.p6.genome.fa ./fastq/${name}_1.fastq.gz ./fastq/${name}_2.fastq.gz > ${name}.sam
samtools view -bS ${name}.sam > ${name}.bam
samtools sort ${name}.bam -o ${name}.sort.bam
samtools index ${name}.sort.bam
samtools depth ${name}.sort.bam > ${name}.depth.txt
cut -f3 ${name}.depth.txt |sort|uniq -c |sort -nr -k1
rm ${name}.bam
rm ${name}.sam
rm ${name}.sort.bam
rm ${name}.sort.bam.bai
mv ${name}.depth.txt ./depth
done