## 1 from HW 
## replace diff col in matrix with vector constants on the
## right

D<- matrix(1:9, nrow= 3)
D
b<- c(0,0,99)
# replace last col with vector b
D.original<- D
D.new<- D[,-c(3)]
D.new<- cbind(D.new,b)
D.new
D
D.new2<- cbind(D[,1],b,D[,3])
D.new2

## Common math functions
prod(4,5)
#min returns a scaler pmin returns a vector
## chi squared more bell shaped w/ more degrees of freedom
## pnorm(prob) mean and sd determines what the normal curve will 
## look like area to a certain x value
## dnorm(density) is the height of the curve y coord height
## to the curve
## quartile/percentile- use qnorm to find 75th percentile

#### Simulation Problem ####

# Time it takes Sue to commute to work is normally distributed
# with mean 30 min and sd 5 min
# Time it takes SUe to buy her Starbucks coffee is normally distributed
# with mean 10 min and sd 3 min
# What is the prob it takes her over 45 min to commute and
# buy her coffee

#simulate 500 commute 
commute.sim<- rnorm(n= 500,mean= 30,sd= 5)
#bell shaped centered on 30
hist(commute.sim)

coffee.sim<- rnorm(500,mean= 10,sd= 3)
total.time<- commute.sim+coffee.sim

# Monte carlo estimate of the prob her commute + coffee exceeds
# 45 min = # of total times over 45 min/number of times ran expt
length(subset(total.time, total.time> 45))/500
# another way
sum(total.time> 45)/length(total.time)

# accuracy Monte Carlo error 1/sqrt(num reps of experiment)
1/sqrt(500)

# estimate is 0.18 +/ -0.04

#### Exercises ####
# 1a
nick.sim<- N(10,2^2)
stacey.sim<- N(9,3^2)
