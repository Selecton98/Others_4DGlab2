##Convert HiC-Pro output to Juicebox input vs Convert HiC-Pro 


java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar  eigenvector -p KR 2-1.allValidPairs.hic 1 BP 100000 2-1_100kb_chr1_eigen.txt

java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar arrowhead  -c 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,X -m 2000 -r 10000 -k KR 2-1.allValidPairs.hic --threads 6 2-1_arrowhead_results

java -jar /home/zhoujiaqi/software/juicer_tools_1.21.01.jar hiccups  -k KR -c 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,X,Y -r 10000 -f 0.15 -p 2 -i 6 -t 10 -d 21000 --ignore-sparsity cleanF-IgD.allValidPairs.hic cleanM-IgD_hiccup 


