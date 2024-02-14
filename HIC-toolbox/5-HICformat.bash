#.allValidPairs 2 .hic
nohup /together_sdb/zhoujiaqi/software/HiC-Pro-master/bin/utils/hicpro2juicebox.sh -i H-naive.allValidPairs -g /together_sdb/zhoujiaqi/software/HiC-Pro-master/annotation/chrom_hg38.sizes -j /together_sdb/zhoujiaqi/software/juicer_tools_1.21.01.jar &

#.allValidPairs 2 .h5
nohup hicConvertFormat -m /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/HM--naive/raw/40000/HM--naive_40000.matrix --bedFileHicpro /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/HM--naive/raw/40000/HM--naive_40000_abs.bed --inputFormat hicpro --outputFormat h5 -o HM-naive.matrix.h5 &
nohup hicConvertFormat -m /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/H--naive/raw/40000/H--naive_40000.matrix --bedFileHicpro /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/H--naive/raw/40000/H--naive_40000_abs.bed --inputFormat hicpro --outputFormat h5 -o H-naive.matrix.h5 &
nohup hicConvertFormat -m /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/HF--naive/raw/40000/HF--naive_40000.matrix --bedFileHicpro /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/HF--naive/raw/40000/HF--naive_40000_abs.bed --inputFormat hicpro --outputFormat h5 -o HF-naive.matrix.h5 &
nohup hicConvertFormat -m /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/HM--IgD/raw/40000/HM--IgD_40000.matrix --bedFileHicpro /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/HM--IgD/raw/40000/HM--IgD_40000_abs.bed --inputFormat hicpro --outputFormat h5 -o HM-IgD.matrix.h5 &
nohup hicConvertFormat -m /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/H--IgD/raw/40000/H--IgD_40000.matrix --bedFileHicpro /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/H--IgD/raw/40000/H--IgD_40000_abs.bed --inputFormat hicpro --outputFormat h5 -o H-IgD.matrix.h5 &
hicConvertFormat -m /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/HF--IgD/iced/40000/HF--IgD_40000_iced.matrix --bedFileHicpro /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/HF--IgD/raw/40000/HF--IgD_40000_abs.bed --inputFormat hicpro --outputFormat h5 -o HF-IgD.matrix.test.h5




