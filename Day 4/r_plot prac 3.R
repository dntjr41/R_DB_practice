#막대기본 - 1
plot.new()
x<-c(100,200,300,350,500)
barplot(x, name=c('a','b','c','d','e'),las=1,col='yellow',ylim=c(100,600))

#막대그래프 - 응용1
plot.new()
data<-read.csv("C:\\Users\\LG\\R workspace\\Day 4\\seoulpopulation.csv",sep=",",header=TRUE)
data
data1<-subset(data,남자>=230000)
data1
gu<-data1$자치구
barplot(data1$남자,names=gu,las=1,col="darkgreen",horiz=TRUE,
main="서울 남성23만명 이상 거주 자치구")

#막대그래프 - 응용2
plot.new()
data<-read.csv("C:\\Users\\LG\\R workspace\\Day 4\\seoulpopulation.csv",sep=",",header=TRUE)
data
tot<-rowSums(data[,c('남자','여자')],na.rm=TRUE)
data<-cbind(data,tot)
data
data1<-subset(data,tot>=500000)
data1
barplot(as.matrix(data1[1:6,2:3]),legend=c('남','여'),beside=TRUE, las=1,
col=c("darkgeen","pink"),main="인구 50만 이상 성별현황",ylim=c(0,400000))

#히스토그램
plot.new()
x<-c(23,33,32,45,37,28,15,35,43,27,46,33,38,46,50,25)
hist(x,main="연령분포",xlim=c(15,50),col="pink")

#상자도표
plot.new()
data<-read.csv("C:\\Users\\LG\\R workspace\\Day 4\\birthdie.csv",sep=",",header=TRUE)
data
boxplot(data$출생,data$사망,names=c('출생','사망'),col=c("pink","darkgreen"),
main="서울2013-2014출생사망자 비교")

#원형그래프
plot.new()
x<-c(27,43,15)
pie(x,radius=1,lables=c('한식','중식','일식'))
