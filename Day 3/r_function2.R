#사용자정의함수 - 1
guideinfo<-function() {
writeLines("분석에 최적화된 프로그램 R")
}
guideinfo()

#사용자정의함수 - 2
guideinfo<-function(msg){
writeLines(msg)
}
guideinfo("나도 배운다")
guideinfo("R을 배워요")

#사용자정의함수 - 3
basicst<-function(x){
amin<-min(x)
amax<-max(x)
amean<-mean(x)
avar<-var(x)
astd<-sd(x)
totinfo<-list(최소값=amin,최대값=amax,평균=amean,분산=avar,표준편차=astd)
return(totinfo)
}

a<-c(68,75,80,85,45,70,95,55)
basicst(a)
b<-c(66,75,35,55)
basicst(b)

#사용자정의함수 - 4
source("C:\\Users\\LG\\R workspace\\Day 3\\calc.txt")
a<-c(35,77,155,50,67)
calc(a)