mylist<- list(myvec= c(4,7,8),mymatrix= matrix(1:4,nrow= 2))
mylist
# pulls out the vector
mylist[[1]]

# numeric
class(mylist[[1]])
# list
class(mylist[1])

# function
areaofrectangle<- function(length,width) {
  area= length*width
  return(area)
}
areaofrectangle(3,5)

## Exercises ##

# 2
x<- c(5,2,17,300,9,22)
# 2a
sq.x<- NULL
for(i in 1:length(x)){
  sq.x<- c(sq.x,x[i]^2)
}
sq.x

# 2b
product.x<- NULL
for(i in 1:length(x)-1){
  product.x<- c(product.x,x[i]*x[i+1])
}
sum(product.x)

prod(x)
myprods<- NULL
for(i in 1:length(x)){
  myprods[i]<- prod(x[1:i])
}
myprods
# 2c
ten.x<- NULL
for (i in 1:length(x)){
  if(x[i]>10){
    ten.x<- c(ten.x,x[i])
  }
}