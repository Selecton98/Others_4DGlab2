#library(RHiCDB)
mar<-read.table("cleanZ-naive_40000_iced.matrix",sep="\t")
bed<-read.table("cleanZ-naive_40000_abs.bed",sep="\t")
head(bed)
head(mar)
circ<-unique(bed$V1)
for(i in 1:22){
bedchr1<-bed[which(bed$V1==circ[i]),]
colnames(bedchr1)<-c("chr_1","start_1","end_1","number1")
colnames(mar)<-c("number1","number2","strength")
try<-merge(bedchr1,mar,all.y=TRUE)
try<-try[which(try$start_1!=""),]
colnames(bedchr1)<-c("chr_2","start_2","end_2","number2")
try2<-merge(bedchr1,try,all.y=TRUE)
try2<-try2[which(try2$start_2!=""),]
try2<-try2[,c(6,7,8,2,3,4,9)]
name<-as.character(circ[i])
name2<-paste("cleanZ-naive_",name,"_40kb.bed",sep="")
name2<-gsub("chr","",name2)
write.table(try2,name2,sep="\t",quote=F,row.names = F,col.names = F)
}
