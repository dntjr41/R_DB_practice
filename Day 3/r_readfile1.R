#scan ���
setwd("C:\\Users\\LG\\R workspace\\Day 3")
a<-scan("irum.txt",what='char',sep=",")
a

x<-scan()

#readLines �Լ�
data<-readLines("consumer.txt")
data

#read.csv �Լ�
data<-read.csv('seoulpopulation.csv', header=TRUE)
data

#XLConnect ��Ű��
install.packages("XLConnect")
require(XLConnect)
wb<-loadWorkbook("subway.xlsx")
df<-readWorksheet(wb,sheet=1,header=TRUE,startrow=20,endrow=47)
df
names(df)<-c("����","���̸�","1���̿���","2���̿���","3���̿���","��","1�����")
df

#XLSX��Ű��
install.packages("xlsx")
require(xlsx)
df2<-read.xlsx2('subway.xlsx',1)
df2

#clipboard�� ����Ȱ� �ҷ�����
a<-readClipboard()
a