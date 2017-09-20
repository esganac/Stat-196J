## 3 from HW ##
six.indx<- which(mtcars$cyl== 6)
head(mtcars)
six.indx

df.six<- mtcars[six.indx,]
df.six

#ave of only auto. trans.
# 0=auto 1= manual
?mtcars

am.indx<- which(df.six$am== 0)
df.six.auto<- df.six[am.indx,]
df.six.auto

## 2 from HW ##
#store everything in vecto x, where x is null
for(i in 1:300){
  x[i+1]<- x[i]
}

# det of vector is a scaler

# inversing a matrix, dont raise to -1 power
newmatrix<- matrix(1:4, nrow= 2)

solve(newmatrix) ##inverse
newmatrix^(-1) ##not the inverse

sim.data<- runif(500) #random from uniform
# creates a flat histogram
hist(sim.data)

## Exercise Central Limit Theorem ##
mymatrix<- matrix(sim.data, nrow= 200, ncol= 5)
hist(sim.data)
mymatrix

# calculate the mean of each row
x.bars<- apply(mymatrix,1,mean)
mean(mymatrix[1,])
hist(x.bars,prob= TRUE)
abline(v= .5, col= "red")
true.mean.x.bar = 0.5
true.sd.x.bar = sqrt((1-0)^2/12)/sqrt(5)

grid <- seq(from=0,to=1,by=0.01)
points(grid, dnorm(grid, mean=0.5, sd=true.sd.x.bar), type= "l")

# numeric or categorical?
#units categoric
#hours of sleep numeric

party<- c('r','d','d','o')
class(party)
party<- factor(party,levels=c('r','d','o'), labels=c('rep','demo','other'))
str(party)

?factor

table(party)

#3 levels-> 3 colums


