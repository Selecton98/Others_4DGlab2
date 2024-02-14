#library(RHiCDB)
mar<-read.table("cleanM-naive_500000_iced.matrix",sep="\t")
bed<-read.table("cleanM-naive_500000_abs.bed",sep="\t")
head(bed)
head(mar)
circ<-c("chr1","chr2","chr3","chr4","chr5","chr6","chr7","chr8","chr9","chr10","chr11","chr12","chr13","chr14","chr15","chr16","chr17","chr18","chr19","chr20","chr21","chr22","chrX","chrY")
prefix<-"cleanM-naive_"
resolution<-"_500kb.bed"
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
try4<-try3[which(try3$chr_2==circ[i+1]),]
try5<-try2[which(try2$chr_1==circ[i+1]),]
try6<-try5[which(try5$chr_2==circ[i]),]
try7<-rbind(try4,try6)
try7<-unique(try7)
name<-as.character(circ[i])
name3<-as.character(circ[i+1])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+2]),]
  try5<-try2[which(try2$chr_1==circ[i+2]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
  try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+2])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+3]),]
  try5<-try2[which(try2$chr_1==circ[i+3]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+3])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+4]),]
  try5<-try2[which(try2$chr_1==circ[i+4]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+4])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+5]),]
  try5<-try2[which(try2$chr_1==circ[i+5]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+5])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+6]),]
  try5<-try2[which(try2$chr_1==circ[i+6]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+6])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+7]),]
  try5<-try2[which(try2$chr_1==circ[i+7]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+47])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+8]),]
  try5<-try2[which(try2$chr_1==circ[i+8]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+8])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+9]),]
  try5<-try2[which(try2$chr_1==circ[i+9]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+9])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+10]),]
  try5<-try2[which(try2$chr_1==circ[i+10]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+10])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+11]),]
  try5<-try2[which(try2$chr_1==circ[i+11]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+11])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+12]),]
  try5<-try2[which(try2$chr_1==circ[i+12]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+12])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+13]),]
  try5<-try2[which(try2$chr_1==circ[i+13]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+13])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+14]),]
  try5<-try2[which(try2$chr_1==circ[i+14]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+14])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+15]),]
  try5<-try2[which(try2$chr_1==circ[i+15]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+15])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+16]),]
  try5<-try2[which(try2$chr_1==circ[i+16]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+16])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+17]),]
  try5<-try2[which(try2$chr_1==circ[i+17]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+17])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+18]),]
  try5<-try2[which(try2$chr_1==circ[i+18]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+18])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+19]),]
  try5<-try2[which(try2$chr_1==circ[i+19]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+19])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+20]),]
  try5<-try2[which(try2$chr_1==circ[i+20]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+20])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+21]),]
  try5<-try2[which(try2$chr_1==circ[i+21]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+21])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+22]),]
  try5<-try2[which(try2$chr_1==circ[i+22]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+22])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+23]),]
  try5<-try2[which(try2$chr_1==circ[i+23]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+23])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i+24]),]
  try5<-try2[which(try2$chr_1==circ[i+24]),]
  try6<-try5[which(try5$chr_2==circ[i]),]
  try7<-rbind(try4,try6)
try7<-unique(try7)
  name<-as.character(circ[i])
  name3<-as.character(circ[i+24])
name2<-paste(prefix,name,"_",name3,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try7,name2,sep="\t",quote=F,row.names = F,col.names = F) 
}
for(i in 1:24){
  try3<-try2[which(try2$chr_1==circ[i]),]
  try4<-try3[which(try3$chr_2==circ[i]),]
name<-as.character(circ[i])
name2<-paste(prefix,name,resolution,sep="")
name2<-gsub("chr","",name2)
write.table(try4,name2,sep="\t",quote=F,row.names = F,col.names = F)
}