#ggplot 기본예제1
a<-c(65,70,75,80)
b<-c(33,55,66,80)
qplot(a,b,color="yellow")

data1<-data.frame(mat=c(55,75,80,65,90,100,70,85),
eng=c(65,100,45,50,75,90,90,65),
avg=c(53,70,83,70,93,95,75,80),
irum=c('김','이','박','최','문','윤','손','정'))
ggplot(data1,aes(avg,mat))+geom_line()
qplot(avg,mat,data=data1,geom=c("line","point"))

#ggplot 기본예제2
datainfo<-read.csv("C:\\Users\\LG\\R workspace\\Day 5\\highwaybus09.csv",sep=",", header=TRUE)
ggplot(datainfo,aes(총운행횟수,이용율))+geom_point(aes(color=선별,size=거리))

#ggplot 레이어 이해
ggplot(data1,aes(mat,avg))+geom_line(color="red")+geom_point()+
geom_line(aes(eng,avg),color="darkgreen")+geom_point(aes(eng,avg),color="pink")

#ggplot 막대그래프1
datainfo<-read.csv("C:\\Users\\LG\\R workspace\\Day 5\\highwaybus09.csv",sep=",", header=TRUE)
ggplot(datainfo,aes(선별))+geom_bar()

#ggplot 막대그래프2
datainfo<-read.csv("C:\\Users\\LG\\R workspace\\Day 5\\highwaybus09.csv",sep=",", header=TRUE)
meandf<-as.data.frame(with(datainfo, tapply(이용율,선별,mean,ra.rm=TRUE)))
meandf$노선<-rownames(meandf)
names(meandf)<-c("이용율","노선")
meandf
ggplot(meandf,aes(노선,이용율))+geom_bar(stat="identity",aes(fill=노선))

##ggplot 막대그래프3
meandf1<-as.data.frame(with(datainfo, aggregate(이용율,list(선별=선별,차종=차종),mean,na.rm=TRUE)))
meandf1$평균이용율<-rownames(meandf1)
names(meandf1)<-c("선별","차종","평균이용율")
meandf1
ggplot(meandf1,aes(선별,평균이용율))+geom_bar(stat="identity",aes(fill=차종),
position="dodge")+geom_text(aes(y=평균이용율,label=평균이용율),color="darkgray",size=2)