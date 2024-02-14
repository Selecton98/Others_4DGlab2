#!/bin/bash
mkdir cleanF-naive_chrX_10kb_3dmaxoutput
sed -i "s/F-IgD/F-naive/g"  parameters.txt
nohup java -jar 3DMax.jar parameters.txt &

mkdir cleanZ-IgD_chrX_10kb_3dmaxoutput
sed -i "s/F-naive/Z-IgD/g"  parameters.txt
nohup java -jar 3DMax.jar parameters.txt &

mkdir cleanZ-naive_chrX_10kb_3dmaxoutput
sed -i "s/Z-IgD/Z-naive/g"  parameters.txt
nohup java -jar 3DMax.jar parameters.txt &

mkdir cleanM-IgD_chrX_10kb_3dmaxoutput
sed -i "s/Z-naive/M-IgD/g"  parameters.txt
nohup java -jar 3DMax.jar parameters.txt &

mkdir cleanM-naive_chrX_10kb_3dmaxoutput
sed -i "s/M-IgD/M-naive/g"  parameters.txt
nohup java -jar 3DMax.jar parameters.txt &

