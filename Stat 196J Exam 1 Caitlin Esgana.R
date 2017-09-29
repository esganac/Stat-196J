#### Caitlin Esgana ####

#### Exam 1 ####

# 1
x<- c(9,3,NA,15,7,NA,8)
# a
mean(x,na.rm= TRUE)
sd(x,na.rm= TRUE)
# b
which(is.na(x))
# c
x[which(is.na(x))]<- 4
x
# d
x[3:5]
# e
sum(x^3,na.rm= TRUE)
# f
which(x>5)
# g
y<- x[which(x>5)]

# 2
W<- matrix(c(2,8,9,5), ncol= 2)
Z<- matrix(c(6,1,0,3), ncol= 2)
# a
W[2,2]
# b
W+Z
# c
solve(W) %*%  W
# d 
W%*%Z
Z%*%W
#Answers are different in matrix multiplication
#e
det(W)
# f
t(W)

# 3
library(tidyverse)
View(txhousing)
nrow(txhousing)
ncol(txhousing)
# a
txhousing[[7]]
txhousing$listings
# b
txhousing[33,]
# c
sub<-subset(txhousing,year=="2015")
# d
listings<- data.frame(sub)
mean(listings[[7]])
# e
myhist<- hist(txhousing$median)
# f
is.list(myhist)
sd(myhist$counts)

# 4
# a
myvec<- c(2,7,3,9,8)
for(i in 1:length(myvec)) {
  print(sqrt(myvec[i]))
}
# b
myvec<- c(2,7,3,9,8)
for(i in 1:length(myvec)) {
  if(myvec[i] %% 2 == 0) {
    print(sqrt(myvec[i]))
  }else{
    print("*")
  }
}
# c
myvec<- c(2,7,3,9,8)
newvec<- NULL
for(i in 1:length(myvec)) {
  newvec<- c(newvec,sqrt(myvec[i]))
}
newvec

# 5
# a
f.to.c<- function(f){
  c<- (5/9)*(f-32)
  return(c)
}
# b
x<- c(2,7,8,12,99)
trim.mean<- function(x){
  trim.mean<- mean(x[2:3])
  return(trim.mean)
}
trim.mean