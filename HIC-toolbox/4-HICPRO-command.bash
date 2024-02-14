#env:HICPRO

##Single step

nohup /home/zhoujiaqi/miniconda2/envs/HICPRO/bin/HiC-Pro_2.11.4/bin/HiC-Pro -i ./Cleandata -o ./Clean-result -c 0422config-hicpro-mm10-2.txt   &

nohup /home/zhoujiaqi/miniconda2/envs/HICPRO/bin/HiC-Pro_2.11.4/bin/HiC-Pro -i ./Rawdata -o ./Clean-result -c 0422config-hicpro-hg38-3-0607.txt  &

##Multiple steps. Path is weird

nohup /home/zhoujiaqi/miniconda2/envs/HICPRO/bin/HiC-Pro_2.11.4/bin/HiC-Pro -i /together_sdb/zhoujiaqi/0609HIC/ANNO_XS01KF2021030087_PM-XS01KF2021030087-01_AHG3JGCCX2_2021-06-06_14-50-39/Clean-result/hic_results/data -o ./Clean-result -c 0422config-hicpro-hg38-3-0607.txt -s merge_persample  &
