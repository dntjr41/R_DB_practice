#����⺻ - 1
plot.new()
x<-c(100,200,300,350,500)
barplot(x, name=c('a','b','c','d','e'),las=1,col='yellow',ylim=c(100,600))

#����׷��� - ����1
plot.new()
data<-read.csv("C:\\Users\\LG\\R workspace\\Day 4\\seoulpopulation.csv",sep=",",header=TRUE)
data
data1<-subset(data,����>=230000)
data1
gu<-data1$��ġ��
barplot(data1$����,names=gu,las=1,col="darkgreen",horiz=TRUE,
main="���� ����23���� �̻� ���� ��ġ��")

#����׷��� - ����2
plot.new()
data<-read.csv("C:\\Users\\LG\\R workspace\\Day 4\\seoulpopulation.csv",sep=",",header=TRUE)
data
tot<-rowSums(data[,c('����','����')],na.rm=TRUE)
data<-cbind(data,tot)
data
data1<-subset(data,tot>=500000)
data1
barplot(as.matrix(data1[1:6,2:3]),legend=c('��','��'),beside=TRUE, las=1,
col=c("darkgeen","pink"),main="�α� 50�� �̻� ������Ȳ",ylim=c(0,400000))

#������׷�
plot.new()
x<-c(23,33,32,45,37,28,15,35,43,27,46,33,38,46,50,25)
hist(x,main="���ɺ���",xlim=c(15,50),col="pink")

#���ڵ�ǥ
plot.new()
data<-read.csv("C:\\Users\\LG\\R workspace\\Day 4\\birthdie.csv",sep=",",header=TRUE)
data
boxplot(data$���,data$���,names=c('���','���'),col=c("pink","darkgreen"),
main="����2013-2014�������� ��")

#�����׷���
plot.new()
x<-c(27,43,15)
pie(x,radius=1,lables=c('�ѽ�','�߽�','�Ͻ�'))