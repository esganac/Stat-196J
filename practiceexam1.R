## Practice Exam ##

# 1 Vectors
# a
vector<- c(NA,7,15,19,NA,7)
# b
vector[which(vector>7)]
# c
which(is.na(vector))
# d
# na.rm= TRUE removes NA"missing values"
mean(vector,na.rm= TRUE)
# e
vector[5]<- 8
# f
vector[2:4]
# g
vector<- c(NA,7,15,19,NA,7)
vector.10<- vector*10

# 2 User-defined fuctions, for loops, if else
# a
x= 5
rental.car<- function(x){
  total.cost<- 25+ (x*.60)
  return(total.cost)
}
rental.car(x)
# b
x<-c(1,3,5,7,10,12)
five <- NULL
for(i in 1:length(x)) {
  if(x[i]> 5){
    five<- sum(c(five,x[i]))
  }
}
five
# c
sum(x[which(x>5)])

# 3 Lists

