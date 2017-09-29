#### Caitlin Esgana
#### HW 2
### Friday, Septemeber 22, 2017

#### Problem 1 ####

# 1a
x <- c(2, 10, 57, NA, 7.6, NA, 200, 9)

# 1b
s.ten<- x[which(x< 10)]

# 1c
which(x< 10)

# 1d
sd(x, na.rm= TRUE) #na.rm= TRUE removes missing values before calc.

# 1e
sum(is.na(x))

# 1f
x[!is.na(x)] #removes NAs

#### Problem 2 ####

# 2a
n <- 3
n.i<- 1
for (i in 2:n) {
  n.i<- (n.i^2 + 9) / (2 * n.i)
}
n.i

# 2b
n <- 500
n.i <- 1
#f.h<- n.i
for (i in 1:n) {
  n.i <- c(n.i,(n.i[i-1] ^ 2 + 9) / (2 * n.i[i-1]))
}
n.i
# Converges to 3.

# 2c
n <- 600
n.i <- 300
#f.h<- n.i
for (i in 1:n) {
  n.i <- c(n.i,(n.i[i-1] ^ 2 + 9) / (2 * n.i[i-1]))
}
n.i


# Yes, it converges to the value 3.

# 2d
n <- 10
n.i <- -500
f.h <- n.i
for (i in 2:n) {
  n.i <- (n.i ^ 2 + 9) / (2 * n.i)
  f.h <- c(f.h, n.i)
}
f.h
# Yes, because when the value of x1, n.i, is negative it converg

# 2e
n <- 600
n.i <- 300
f.h <- n.i
for (i in 2:n) {
  n.i <- (n.i ^ 2 + 9) / (2 * n.i)
  f.h <- c(f.h, n.i)
}
f.h
plot(f.h)

#### Problem 3 ####

?mtcars
View(mtcars)

# 3a
dim(mtcars)
?dim(mtcars)
#It gives the number of rows and number columns of the dataframe.

# 3b
class(mtcars)
?class(mtcars)

# 3c
which(mtcars$cyl== 4)
#another way
which(mtcars[,2]== 4)

# 3d 
fourcylinder<- data.frame(mtcars[which(mtcars$cyl== 4),])

# 3e
am<- data.frame(fourcylinder[which(fourcylinder$am== 0 ),])
mean(am$mpg)

# extracts the row number of automatics and 1 is mpg
mean(fourcylinder[(fourcylinder$am== "0"),1])

#### Problem 4 ####

# 4a
x.grid<- seq(from= -2, to= 10,by= 0.01)
y<- x.grid ^ 2
plot(x.grid, y, type= "l")

# 4b
r.heights<- rnorm(n= 500, mean= 65, sd= 3.5)

# 4c
hist(r.heights, freq= FALSE)

# 4d
curve(dnorm(x,mean= 65,sd= 3.5),add= TRUE)

#### Problem 5 ####
x<- c(3,7,10,5,22,11)

# 5a
w<- NULL
for(i in 1:length(x)){
  w[i]<- x[i]^3
}
w
# 5b
x^3

# 5c
myproducts<- NULL
for(i in 1:length(x)-1) {
  myproducts[i-1]<- x[i]*x[i-1]
}
myproducts

#### Problem 6 ####
fibvec<- NULL
num<- 30
fibvec[1:2]<- 1
for(i in 3:num){
  fibvec[i]<- fibvec[i-1]+fibvec[i-2]
}
fibvec

# 6a
even<- NULL
for(i in 1:num){
  if ((fibvec[i] %% 2) == 0){
    even<-c(even,fibvec[i])
  }
}
even

# 6b
fibvec[which((fibvec %% 2) == 0)]