#### Problem 1 ####

## a ##  
# prob of exactly 5 lefties out of 30 randomly selected Americans
exactly.5 <- dbinom(5, 30, 0.1)
exactly.5

## b ##
# prob distribution of X= 0,1,...,30
x.prob.dist <- dbinom(1:30, 30, 0.1)
x.prob.dist

## c ## 
# from part (b) histogram
part.b.graph<- plot(x.prob.dist, type = "h")
part.b.graph

## d ##
# probablity there will be enough left-handed desks
# for a random group of 30 desks
prob.desk<- pbinom(3,30,0.1)
prob.desk

#### Problem 2 ####

## a ##
# percent of newborn babies over 9 pounds
above.9<- pnorm(9,mean= 7.0, sd= 1.2, lower.tail = FALSE)
above.9

## b ##
# percent of newborns weigh between 6 and 8 pounds
below.8<- pnorm(8.0, 7.0, 1.2, lower.tail = FALSE)
below.6<- pnorm(6.0, 7.0, 1.2, lower.tail = FALSE)
between.6.and.8<- below.8-below.6
between.6.and.8

## c ##
# 85th percentile of newborn baby weights
percentile.85<- qnorm(0.85, 7.0, 1.2)
percentile.85

## d ##
# randomly generate the weights of 10 newborn babies
set.seed(10)
random.10<- rnorm(10,7.0,1.2)
random.10
# mean of 10 sampled weights
mean(random.10)
# sd of 10 sampled weights
sd(random.10)
# The mean is pretty close to the population mean and the 
# standard deviation is not as close to the population
# standard deviation.

## e ##
random.10<- rnorm(10,7.0,1.2)
random.10
# mean of 10 sampled weights
mean(random.10)
# sd of 10 sampled weights
sd(random.10)
# Same comment as in d.

#### Problem 3 ####

## a ##
set.seed(10000)
random.sample<- rnorm(10000,0,1)
sample.squared<- random.sample^2
sample.squared

## b ##
length(subset(sample.squared,sample.squared< 2))/10000

1/sqrt(10000)

## c  ##
set.seed(10000)
random.chi<- pchisq(10000,1)
length(subset(random.chi,random.chi<2))/10000
