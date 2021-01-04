#그래프 기본 - 1
plot.new()
age<-c(24,36,40,42,27,35,55,48)
plot(age, main="나이분포", ylab="나이", col="green")

#그래프 기본 - 2
plot.new()
height<-c(165,170,177,167,180,172,169,179)
weight<-c(70,73,62,80,85,74,72,68)
plot(weight,height, main="키와 몸무게 분포",type='h',xlab="체중",ylab="키", col=rainbow(length(height)))

#그래프 기본 - 3
plot.new()
x<-1:5
y<-x
par(mfrow=c(2,3))
kind=c('p','b','l','o','s','h')
for(i in 1:length(kind)) {
  title<-paste("type=",kind[i])
  plot(x,y,type=kind[i],main=title,col=rainbow(length(x)))
}

#그래프 기본 - 4
plot.new()
x<-1:5
y<-x
plot(x,y,main="sample")
abline(h=x, col="gray", lty="dotted")
text(3,3,"표준점")

#그래프 기본 - 5
plot.new()
height<-c(165,170,177,167,180,172,169,179)
weight<-c(70,73,62,80,85,74,72,68)
irum<-c('김','박','최','신','정','문','오','추')
plot(weight,height, main="키와 몸무게 분포",type='b',xlab="체중",ylab="키", col=rainbow(length(height)))
abline(h=seq(165,180,5), col="gray", lty=2)
text(73,174,"표준", col="brown")
axis(2,at=height,labels=height,col.axis="gray")
legend("bottomright",col=rainbow(length(height)),legend=irum,lty=1)
