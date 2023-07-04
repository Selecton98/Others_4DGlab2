
nohup /together_sdc/zhoujiaqi/software/fastp-master/fastp --thread 12 -i ./V350011572_L023_99_1.fq -o ./cleanV350011572_L023_99_1.fq -I ./V350011572_L023_99_2.fq -O ./cleanV350011572_L023_99_2.fq -j ./report-baseline.json -h ./report-baseline.html &
nohup /together_sdc/zhoujiaqi/software/fastp-master/fastp --thread 12 -i ./Unknown_AY710-01T0001_good_1.fq  -o ./cleanUnknown_AY710-01T0001_good_1.fq -I  ./Unknown_AY710-01T0001_good_2.fq -O ./cleanUnknown_AY710-01T0001_good_2.fq  -j ./report-recurrence.json -h ./report-recurrence.html &

#env: docker

STAR-Fusion --genome_lib_dir //opt/mydata/together_sdd/ECD-AML/GRCh38_gencode_v22_CTAT_lib_Mar012021.plug-n-play/ctat_genome_lib_build_dir \
             --left_fq //opt/mydata/together_sdd/ECD-AML/RECURRENCE/cleanUnknown_AY710-01T0001_good_1.fq\
             --right_fq //opt/mydata/together_sdd/ECD-AML/RECURRENCE/cleanUnknown_AY710-01T0001_good_2.fq \
             --output_dir RECURRENCE_output \
             --FusionInspector validate \
             --denovo_reconstruct \
            --examine_coding_effect \
            --CPU 12 


STAR-Fusion --genome_lib_dir //opt/mydata/together_sdd/ECD-AML/GRCh38_gencode_v22_CTAT_lib_Mar012021.plug-n-play/ctat_genome_lib_build_dir \
             --left_fq //opt/mydata/together_sdd/ECD-AML/BASELINE/cleanV350011572_L023_99_1.fq \
             --right_fq //opt/mydata/together_sdd/ECD-AML/BASELINE/cleanV350011572_L023_99_2.fq \
             --output_dir BASELINE_output \
             --FusionInspector validate \
             --denovo_reconstruct \
            --examine_coding_effect \
            --CPU 12 


#env:HTSEQ

nohup STAR \
    --readFilesIn cleanV350011572_L023_99_1.fq  cleanV350011572_L023_99_2.fq \
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
    --genomeDir  /together_sdc/zhoujiaqi/index/TCGA-index  \
    --genomeLoad NoSharedMemory \
    --limitSjdbInsertNsj 1200000 \
    --outFileNamePrefix cleanUnknown \
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
    --runThreadN 16 \
    --twopassMode Basic &

nohup htseq-count \
-f sam \
-r pos \
-s no \
-a 10 \
-t exon \
-i gene_id \
-m intersection-nonempty \
cleanUnknownAligned.out.sam \
../gencode.v22.annotation.gtf > cleanUnknown.count 2> htseq.log &
