a<-8
if(a%%2==0){
result<-"¦��"
result
}

a<-123
if(a%%2==0){
result<-"¦��"
}else{
result<-"Ȧ��"
}
result

a<-c(10,13,7,8,50)
result<-c(ifelse(a%%2==0,"¦��","Ȧ��"))
df<-data.frame(a, result)
df

a<-c(10,13,7,8,20)
result<-c(ifelse(a>mean(a), "����ʰ�", ifelse(a<mean(a),"��չ̴�","��հ�")))
df2<-data.frame(a,result)
df2