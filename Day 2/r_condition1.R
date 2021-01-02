a<-8
if(a%%2==0){
result<-"Â¦¼ö"
result
}

a<-123
if(a%%2==0){
result<-"Â¦¼ö"
}else{
result<-"È¦¼ö"
}
result

a<-c(10,13,7,8,50)
result<-c(ifelse(a%%2==0,"Â¦¼ö","È¦¼ö"))
df<-data.frame(a, result)
df

a<-c(10,13,7,8,20)
result<-c(ifelse(a>mean(a), "Æò±ÕÃÊ°ú", ifelse(a<mean(a),"Æò±Õ¹Ì´Þ","Æò±Õ°ª")))
df2<-data.frame(a,result)
df2