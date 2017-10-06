## Normal Distribution ##

# using culmative  prob, pnorm(q,mean,sd) 
# lower.tail 
# logical; if TRUE (default),
# probabilities are P[X = x] otherwise, P[X > x].
pnorm(89,mean= 100, sd= 15, lower.tail= F)
?pnorm

# using quantile(percentile), qnorm(p,mean,sd)
# returns the x-axis value
qnorm(0.90,mean= 10, sd= 5)

# using height of density(pdf), dnorm(x,mean,sd)
# useful for graphing, gives y-coords 
dnorm(8,mean= 10, sd= 5)
dnorm(10,mean= 10, sd= 5)

## Exercises ##

# 1 #
# 20 random IQ samples
sample<- rnorm(20,100,15)

# 2 #
# percent of ppl with IQs above 89
pnorm(89,mean= 100, sd= 15, lower.tail= F)

# 3 #
# finds the percent of people with IQs
# between 110 and 140
y<- pnorm(110,mean= 100, sd= 15)
x<- pnorm(140,mean= 100, sd= 15)
x-y
?plot
# 4 #
# 90th percentile
qnorm(0.90, mean= 100, sd= 15)

# 5 #
# height of normal curve at IQ= 100 and IQ= 107
dnorm(100,mean= 100, sd= 15)
dnorm(107,mean= 100, sd= 15)
# IQ= 100 is higher, since the mean is 100.

## Binomial Distribution ##

# toss a biased coin 10 times, prob of head= 0.6
# randomly generate one experiment
# rbinom(n= number of observations, size, prob)
rbinom(5,size= 10,prob= 0.6) # 50 toin tosses

# prob of 4 heads in 10 tosses biased coin
dbinom(4,size= 10,prob= 0.6)
dbinom(6,10,0.6)
dbinom(0:10,10,0.6)
# pbinom culmative prob
pbinom(4,10,.6)
