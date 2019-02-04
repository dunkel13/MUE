TP85.1<-c(36,59,153,181,221)
TP85.2<-c(55,83,163,229,369)
TP85.3<-c(66,75,137,201,272)
sum(TP85.3)
sum.S.t.SI<-NULL
TP85<-cbind(TP85.1, TP85.2, TP85.3)
for(i in 1:5){
  sum.S.t.SI[i]<-(TP85[i]-(sum(TP85.1,TP85.2,TP85.3)/15))^2
}
S.t.SI<-(1/14)*sum(sum.S.t.SI) # (1/14)* 28010.22 = 2000.73
((50*35)/15)*S.t.SI # [1] 233418.5
378490*15/(50*35) # S.t.SI = 3244.2

# intento 1
{
  sum.S.t<- matrix(NA,nr=3, nc=5)
  for(i in 1:5){
    sum.S.t[1,i]<-(TP85.1[i]-(sum(TP85.1)/5))^2
    sum.S.t[2,i]<-(TP85.2[i]-(sum(TP85.2)/5))^2
    sum.S.t[3,i]<-(TP85.3[i]-(sum(TP85.3)/5))^2
  }
  (1/14)*sum(sum.S.t) #8504.829
  ((50*35)/15)*(1/14)*sum(sum.S.t) # [1] 992230 muy grande
}
# intento 3
{
  t.tp85<-c(650,899,728)
  sum.S<- NULL
  for(i in 1:3){
    sum.S[i]<-(t.tp85[i]-(sum(t.tp85)/3))^2
  }
  (1/14)*sum(sum.S) #2317.286
  ((50*35)/15)*(1/14)*sum(sum.S) #270350
}
