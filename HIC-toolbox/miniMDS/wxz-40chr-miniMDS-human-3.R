#library(RHiCDB)
mar<-read.table("cleanM-naive_40000_iced.matrix",sep="\t")
bed<-read.table("cleanM-naive_40000_abs.bed",sep="\t")
head(bed)
head(mar)
circ<-c("chr1","chr2","chr3","chr4","chr5","chr6","chr7","chr8","chr9","chr10","chr11","chr12","chr13","chr14","chr15","chr16","chr17","chr18","chr19","chr20","chr21","chr22","chrX","chrY")
prefix<-"cleanM-naive_"
resolution<-"_40kb.bed"
colnames(bed)<-c("chr_1","start_1","end_1","number1")
colnames(mar)<-c("number1","number2","strength")
try<-merge(bed,mar,all.y=TRUE)
try<-try[which(try$start_1!=""),]
colnames(bed)<-c("chr_2","start_2","end_2","number2")
try2<-merge(bed,try,all.y=TRUE)
try2<-try2[which(try2$start_2!=""),]
try2<-try2[,c(6,7,8,2,3,4,9)]
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i]),]
name<-as.character(circ[i])
name2<-paste(prefix,name,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try4,name2,sep="\t",quote=F,row.names = F,col.names = F)
}