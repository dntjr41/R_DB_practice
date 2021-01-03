a<-c(23,13,5,17,85)
mean(a)
sd(a)
sort(a)
rev(a)

a1<-c(2.34,3.1,4.3,2.98)
b1<-c(2.4,3.09,4.3,3.1)
cor(a1,b1)

#apply - 1
height<-c(177,180,167,165,170,NA)
weight<-c(NA,77.3,80,60,NA,64)
df<-data.frame(신장=height,체중=weight)
names(df)<-c("신장","체중")
df

apply(df,2,mean,na.rm=TRUE)
lapply(df,max,na.rm=TRUE)
sapply(df,max,na.rm=TRUE)

#tapply활용
dflist<-read.table("C:\\Users\\LG\\R workspace\\Day 3\\passlist.txt", head=TRUE)
dflist
tapply(dflist$평점,dflist$성별,mean)
tapply(dflist$나이,dflist$성별,mean,simplify=FALSE)


