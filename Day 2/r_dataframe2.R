pinfo<-read.table("C:\\Users\\LG\\R workspace\\Day 2\\personal.txt", header=TRUE)
pinfo

pjobinfo<-read.table("C:\\Users\\LG\\R workspace\\Day 2\\pjob.txt", header=TRUE)
pjobinfo

lifeinfo<-data.frame(���=c("�����","�з��۶��̵�","���","�ɲ���","����"), ���ɻ�=c("���","����Ʈ�о�","���ô���","����","����������"))
lifeinfo

myinfo<-cbind(pinfo,lifeinfo)
myinfo

otherinfo<-data.frame(�̸�=c("Ȳ����","���ؿ�"), ��������=c("����","���"), ����=c(42,45),
����=c("��","��"))
otherinfo

totinfo<-rbind(pinfo,otherinfo)
totinfo

coremember<-merge(pinfo,pjobinfo)
coremember

merge(pinfo,pjobinfo,all=TRUE)

data1<-subset(pinfo, select=-��������)
data1

data2<-subset(pinfo, select=c(�̸�,����))
data2

data3<-cbind(pinfo, ��ȥ=c(FALSE, TRUE, TRUE, FALSE, TRUE))
data3

data3[-3,]
data3[,-5]

ncol(data3)
nrow(data3)

colnames(data3)<-c("����","������","����","����")
names(data3)