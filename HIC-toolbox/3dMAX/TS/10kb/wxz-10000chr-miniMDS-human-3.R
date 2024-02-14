options("expressions"=20000)
mar<-read.table("cleanZ-IgD_10000_iced.matrix",sep="\t")
bed<-read.table("cleanZ-IgD_10000_abs.bed",sep="\t")
head(bed)
head(mar)
circ<-c("chr1","chr2","chr3","chr4","chr5","chr6","chr7","chr8","chr9","chr10","chr11","chr12","chr13","chr14","chr15","chr16","chr17","chr18","chr19","chr20","chr21","chr22","chrX","chrY")
prefix<-"cleanZ-IgD_"
resolution<-"_10kb.bed"
bed<-bed[,c(1,4)]
colnames(bed)<-c("chr","number1")
colnames(mar)<-c("number1","number2","strength")
for(i in 1:24){
bed2<-bed[which(bed$chr==circ[i]),]
try<-merge(bed2,mar,all=FALSE)
try$chr<-NULL
colnames(bed2)<-c("chr","number2")
try<-merge(bed2,mar,all=FALSE)
try$chr<-NULL
try<-try[,c("number1","number2","strength")]
head(try)
name<-as.character(circ[i])
name2<-paste(prefix,name,resolution,sep="")
write.table(try,name2,sep="\t",quote=F,row.names = F,col.names = F)
}
