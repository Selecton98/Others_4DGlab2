
library(RHiCDB)
mar<-read.table("H--IgD_10000.matrix",sep="\t",quote="")
bed<-read.table("H--IgD_10000_abs.bed",sep="\t",quote="")

head(bed)
head(mar)

circ<-c("chr1","chr2","chr3","chr4","chr5","chr6","chr7","chr8","chr9","chr10","chr11","chr12","chr13","chr14","chr15","chr16","chr17","chr18","chr19","chr20","chr21","chr22")

colnames(bed)<-c("chr_1","start_1","end_1","number1")
colnames(mar)<-c("number1","number2","strength")
try<-merge(bed,mar,all.y=TRUE)
try<-try[which(try$start_1!=""),]
colnames(bed)<-c("chr_2","start_2","end_2","number2")
try2<-merge(bed,try,all.y=TRUE)
try2<-try2[which(try2$start_2!=""),]
try2<-try2[,c(6,7,8,2,3,4,9)]

for(i in 1:22){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i]),]
  try4<-try4[,c(2,5,7)]
  name<-paste(circ[i],".matrix",sep="")
  write.table(try4,name,sep="\t",quote=F,row.names = F,col.names = F)
}


try3<-try2[which(try2$chr_1=="chrX"),]
try4<-try3[which(try3$chr_2=="chrX"),]
try4<-try4[,c(2,5,7)]
write.table(try4,"chr23.matrix",sep="\t",quote=F,row.names = F,col.names = F)

rm(try2)

hicfile='./'
resolution=10000
chrsizes='hg38'
outdir='./'
RHiCDB(hicfile,resolution,chrsizes,ref='hg38',outdir=outdir)

#chr11:65,653,596-65,663,090,RELA
hicfile='./chr11.matrix'
resolution=10000
outdir='./'
CDBfile='./CDB.txt'
chr=11
startloc=65000000
endloc=66000000
visHiCDB(hicfile,CDBfile,resolution,chr,startloc,endloc,outdir)
