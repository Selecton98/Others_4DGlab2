#!/bin/bash 
infile=$1
outfile=$2
res=$3
for ((i=1;i<=24;i++)); do
for ((j=$((i))+1;j<=24;j++)); do
if [ $i -eq 23 ];then
c1=chrX
elif [ $i -eq 24 ];then
c1=chrY
else
c1=chr${i}
fi
if [ $j -eq 23 ];then
c2=chrX
elif [ $j -eq 24 ];then
c2=chrY
else
c2=chr${j}
fi
java -jar ${JUICERTOOLS} dump observed GW_KR ${infile} ${c1} ${c2} BP ${res} | awk -v c1=${c1} -v c2=${c2} -v res=${res} '{OFS="\t"}{print c1,$1,$1+res,c2,$2,$2+res,$3}' >> ${outfile};
done 
done


