## for loops ##

for(i in 1:10){
  print("hello world")
}

for(i in 1:3){
  print(rep('*',6), quote=F)
}

for(i in 1:3){
  print(rep('*',4-i), quote=F)
}

x<- c(9,5,NA,3,NA)
is.na(x)
sum(is.na(x))

r<- 3
c<- 2
mymat<- matrix(1:6, nrow= r, ncol= c)
mymat
# find mean of every row in matrix
for(i in 1:r) {
  print(mean(mymat[i,]))
}
# intialize vector before using in for loop
row.mean<- NULL
for(i in 1:r){
  row.mean[i]<- mean(mymat[i,])  
}
row.mean

## This week Exercises
# 1
x<- c(8,1,22,3,7)

#1a

i<- 3
for(i in 1:length(x)) {
  if (x[i]< 10) {y<- "yes"} else {y<- "no"}

}

## Last Week Exercise
# 1
x<- c(7,25,30,9)
for(i in 1:length(x)) {
  print((x[i])^2)
}
# 2
sqr.x<-c(NA,NA,NA,NA)
x<- c(7,25,30,9)
for(i in 1:length(x)) {
  sqr.x[i]<-(x[i])^2
}
sqr.x

# 3
r<- 3
c<- 2
col.mean<- NULL
mymat<- matrix(1:6, nrow= r, ncol= c)
for(i in 1:length(c)) {
  col.mean[i]<- mean(mymat[,i])  
}
col.mean


## Fibanaci Numbers
# generate 10 FN
fibvec<- NA
fibvec[1:2]<- 1
fibbec[3]<- fibvec[1]+ fibvec[2]
fibvec[4]<- fibvec[3]+ fibvec[2]
fibvec[i]<- fibvec[i-1]+fibvec[i-2]

fibvec<- NA
num<- 10
for(i in 2:num){
  fibvec[i]<- fibvec[i-1]+fibvec[i-2]
}
## use mod for HW

## If Else Statement ##
if
                              
