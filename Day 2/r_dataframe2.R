pinfo<-read.table("C:\\Users\\LG\\R workspace\\Day 2\\personal.txt", header=TRUE)
pinfo

pjobinfo<-read.table("C:\\Users\\LG\\R workspace\\Day 2\\pjob.txt", header=TRUE)
pjobinfo

lifeinfo<-data.frame(취미=c("목공예","패러글라이딩","등산","꽃꽂이","독서"), 관심사=c("취업","아파트분양","주택대출","이직","교통인프라"))
lifeinfo

myinfo<-cbind(pinfo,lifeinfo)
myinfo

otherinfo<-data.frame(이름=c("황성주","윤준영"), 거주지역=c("강원","충북"), 나이=c(42,45),
성별=c("여","여"))
otherinfo

totinfo<-rbind(pinfo,otherinfo)
totinfo

coremember<-merge(pinfo,pjobinfo)
coremember

merge(pinfo,pjobinfo,all=TRUE)

data1<-subset(pinfo, select=-거주지역)
data1

data2<-subset(pinfo, select=c(이름,나이))
data2

data3<-cbind(pinfo, 결혼=c(FALSE, TRUE, TRUE, FALSE, TRUE))
data3

data3[-3,]
data3[,-5]

ncol(data3)
nrow(data3)

colnames(data3)<-c("성명","거주지","나이","성별")
names(data3)
