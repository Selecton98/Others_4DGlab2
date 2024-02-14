##Convert HiC-Pro output to Juicebox input vs Convert HiC-Pro 


java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 1 BP 100000 cleanZ-naive_100kb_chr1_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 2 BP 100000 cleanZ-naive_100kb_chr2_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 3 BP 100000 cleanZ-naive_100kb_chr3_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 4  BP 100000 cleanZ-naive_100kb_chr4_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 5 BP 100000 cleanZ-naive_100kb_chr5_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 6 BP 100000 cleanZ-naive_100kb_chr6_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 7 BP 100000 cleanZ-naive_100kb_chr7_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 8 BP 100000 cleanZ-naive_100kb_chr8_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 9 BP 100000 cleanZ-naive_100kb_chr9_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 10 BP 100000 cleanZ-naive_100kb_chr10_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 11 BP 100000 cleanZ-naive_100kb_chr11_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 12 BP 100000 cleanZ-naive_100kb_chr12_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 13 BP 100000 cleanZ-naive_100kb_chr13_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 14 BP 100000 cleanZ-naive_100kb_chr14_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 15 BP 100000 cleanZ-naive_100kb_chr15_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 16 BP 100000 cleanZ-naive_100kb_chr16_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 17 BP 100000 cleanZ-naive_100kb_chr17_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 18 BP 100000 cleanZ-naive_100kb_chr18_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 19 BP 100000 cleanZ-naive_100kb_chr19_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 20 BP 100000 cleanZ-naive_100kb_chr20_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 21 BP 100000 cleanZ-naive_100kb_chr21_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic 22 BP 100000 cleanZ-naive_100kb_chr22_eigen.txt
java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR cleanZ-naive.allValidPairs.hic X BP 100000 cleanZ-naive_100kb_chrX_eigen.txt
cat cleanZ-naive_100kb_chr1_eigen.txt cleanZ-naive_100kb_chr2_eigen.txt cleanZ-naive_100kb_chr3_eigen.txt cleanZ-naive_100kb_chr4_eigen.txt cleanZ-naive_100kb_chr5_eigen.txt cleanZ-naive_100kb_chr6_eigen.txt cleanZ-naive_100kb_chr7_eigen.txt cleanZ-naive_100kb_chr8_eigen.txt cleanZ-naive_100kb_chr9_eigen.txt cleanZ-naive_100kb_chr10_eigen.txt cleanZ-naive_100kb_chr11_eigen.txt cleanZ-naive_100kb_chr12_eigen.txt cleanZ-naive_100kb_chr13_eigen.txt cleanZ-naive_100kb_chr14_eigen.txt cleanZ-naive_100kb_chr15_eigen.txt cleanZ-naive_100kb_chr16_eigen.txt cleanZ-naive_100kb_chr17_eigen.txt cleanZ-naive_100kb_chr18_eigen.txt cleanZ-naive_100kb_chr19_eigen.txt cleanZ-naive_100kb_chr20_eigen.txt cleanZ-naive_100kb_chr21_eigen.txt cleanZ-naive_100kb_chr22_eigen.txt cleanZ-naive_100kb_chrX_eigen.txt > cleanZ-naive_100kb_all_eigen.txt
mkdir cleanZ-naive-eigen
mv cleanZ-naive_100kb*eigen.txt cleanZ-naive-eigen

java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar arrowhead  -c 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,X -m 2000 -r 5000 -k KR cleanZ-naive.allValidPairs.hic --threads 6 cleanZ-naive_arrowhead_results


java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar arrowhead  -c 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,X -m 2000 -r 5000 -k KR cleanF-IgD.allValidPairs.hic --threads 6 cleanF-IgD_arrowhead_results --ignore-sparsity






