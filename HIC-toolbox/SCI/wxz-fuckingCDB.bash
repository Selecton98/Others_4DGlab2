#/home/zhoujiaqi/software/sci-master/scripts/hic2sci.sh GSM1551550_HIC001.hic rough_GSM15515f50_HIC001.bed 25000


#awk   '$7 !="[Globals.java:138]" {print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7}'   rough_GSM1551550_HIC001.bed > rough_GSM1551550_HIC001.integ.bed

#bedtools intersect -a rough_GSM1551550_HIC001.integ.bed -b GSM1551550_HIC001_CDB.txt -wo > rough_GSM1551550_HIC001_CDB_contact.bed #要完整的flanking bins

#awk '{print $4"\t"$5"\t"$6"\t"$1"\t"$2"\t"$3"\t"$7}' rough_GSM1551550_HIC001.integ.bed > rough_GSM1551550_HIC001.integ.mirror.bed


bedtools intersect -a rough_GSM1551550_HIC001.integ.mirror.bed -b GSM1551550_HIC001_CDB.txt -wo > rough_GSM1551550_HIC001_CDB_contact.mirror.bed #要完整的flanking bins

awk '{print $4"\t"$5"\t"$6"\t"$1"\t"$2"\t"$3"\t"$7"\t"$8"\t"$9"\t"$10"\t"$11"\t"$12"\t"$13}' rough_GSM1551550_HIC001_CDB_contact.mirror.bed > rough_GSM1551550_HIC001_CDB_contact.rormir.bed

cat rough_GSM1551550_HIC001_CDB_contact.bed rough_GSM1551550_HIC001_CDB_contact.rormir.bed >rough_GSM1551550_HIC001_CDB_contact.all.bed
 
sort rough_GSM1551550_HIC001_CDB_contact.all.bed | uniq > rough_GSM1551550_HIC001_CDB_contact.soruni.bed

awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7}' rough_GSM1551550_HIC001_CDB_contact.soruni.bed > rough_GSM1551550_HIC001_CDB_contact.soruni.sci


nohup python /home/zhoujiaqi/software/sci-master/sci/sci.py -n roughall -f rough_GSM1551550_HIC001_CDB_contact.soruni.sci -r 25000 -g /home/zhoujiaqi/software/HiC-Pro-master/annotation/chrom_hg19_SCI.sizes -o both  -s 1 -k 5 &

nohup python /home/zhoujiaqi/software/sci-master/sci/sci.py -n rough_all -f rough_GSM1551550_HIC001.integ.bed -r 25000 -g /home/zhoujiaqi/software/HiC-Pro-master/annotation/chrom_hg19_SCI.sizes -o both  -s 1 -k 5 &

nohup python /home/zhoujiaqi/software/sci-master/sci/sci.py -n rough2 -f rough_GSM1551550_HIC001.integ.bed -r 25000 -g /home/zhoujiaqi/software/HiC-Pro-master/annotation/chrom_hg19_SCI.sizes -o both  -s 25 -k 3 &

##
bedtools intersect -a rough_compartments2.txt -b GSM1551550_HIC001_CDB.txt -wo > rough_compartments_CDB.bed
bedtools intersect -a rough2_compartments2.txt -b GSM1551550_HIC001_CDB.txt -wo > rough2_compartments_CDB.bed
bedtools intersect -a rough50_compartments2.txt -b GSM1551550_HIC001_CDB.txt -wo > rough50_compartments_CDB.bed

nohup bowtie2-build --threads 8 GRCh37.primary_assembly.genome.fa ./bowtie2index2 &

findMotifsGenome.pl ${sample}_homer.bed /data02/zhoujiaqi/index/bowtie2.index/GRCm38.p6.genome.fa ./motifDir -len 8,10,12 -p 16


nohup python /home/zhoujiaqi/software/sci-master/sci/sci.py -n rough100 -f rough_GSM1551550_HIC001.integ.bed -r 25000 -g /home/zhoujiaqi/software/HiC-Pro-master/annotation/chrom_hg19_SCI.sizes -o both  -s 25 -k 100 &
#不行

nohup python /home/zhoujiaqi/software/sci-master/sci/sci.py -n rough50 -f rough_GSM1551550_HIC001.integ.bed -r 25000 -g /home/zhoujiaqi/software/HiC-Pro-master/annotation/chrom_hg19_SCI.sizes -o both  -s 25 -k 50 &

nohup python /home/zhoujiaqi/software/sci-master/sci/sci.py -n rough6 -f rough_GSM1551550_HIC001.integ.bed -r 25000 -g /home/zhoujiaqi/software/HiC-Pro-master/annotation/chrom_hg19_SCI.sizes -o both  -s 25 -k 6 &

nohup python /home/zhoujiaqi/software/sci-master/sci/sci.py -n rough6 -f rough_GSM1551550_HIC001.integ.bed -r 25000 -g /home/zhoujiaqi/software/HiC-Pro-master/annotation/chrom_hg19_SCI.sizes -o both   -s 6 -k 6 &
