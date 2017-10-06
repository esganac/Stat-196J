?mtcars
head(mtcars)

# Pick out rows with 4 cyl
# think about it as a vector and extract it out

mtcars$cyl
# get a vector of positions
which(mtcars$cyl== 4)
mtcars[c(1,7),]

## Law of Large #'s ##

simulatedtosses<- rbinom(n= 10000,size= 1,prob= 0.5)
cumHeads<- cumsum(simulatedtosses)
plot(1:10000, cumheads/1:10000, type= "l")
abline(h= 0.5)

## Matrixes ##

mymat1<- matrix(1:9,nrow= 3,ncol= 3)
mymat1
mymat2<- matrix(1:9,nrow= 3, byrow= TRUE)
mymat2
mymat<- matrix(NA,nrow= 2, ncol= 2)
mymat3[1,2]<- 6
mymat3

newmat[1,1]<- 5

y<- matrix(c(2,4,3,1),nrow= 2)
y
x<- matrix(c(3,2,0,1),nrow= 2)
x

5*x
x*y

x %*% y

# inverse of x
solve(x)
x %*% solve(x)

# extracting a sub matrix

mymat
mymat1[2:3, 2:3]

## Exercise ##

z<- matrix(c(1,1,2,4,6,3,7,8,7),nrow= 3)
z

# 1
z.i<- solve(z)

# 2
z %*% z.i

# 3
z^2
# It multiplies each number by itself.

z %*% z
# No, because matrix multipcation isn't the same.

## Apply fuction ##


mymat1<- matrix(1:9,nrow= 3,ncol= 3)
mymat1
apply(mymat1,1, mean)

bigmat<- cbind(mymat1,1:3)
bigmat

# central limit theorem will tell us what this means
sampl1= runif(5)
mean(sampl1)




