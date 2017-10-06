View(state.x77)
?state.x77
merge(state.x77,deptOfEducationFundingbyState, 
      by.x= 0, by.y= 1)-> mergeddata
View(mergeddata)
summary(state.x77)

## Binomial ##

# dbinom- prob of exact # you put in
dbinom(6,10,0.6)
dbinom(1:10,10,0.6)

# pbinom cumulative prob
pbinom(4,10,.6)
# can get pbinom by adding dbinom together
dbinom(0:4,size= 10,prob= 0.6)
sum(dbinom(0:4,size= 10,prob= 0.6))

# qbinom percentile
# For what number of heads is the prob 0.90 that 
# we will get less than or equal to this number
# of heads
qbinom(0.90,size= 10, 0.6)
pbinom(8,10,0.6)

## Normal and Binomial Prob ##

## Problem 1 ##
# 1a # 
# i
pnorm(5*12,mean= 64, sd= 2.5)
# ii
pnorm(6*12,mean= 64, sd= 2.5, lower.tail = F)
# iii

# at least 5: 5,6,7,8,9,10
1-pbinom(4,10.0.2)
# or 
pbinom(4,10,0.2, lower.tail)

## Monte Carlo ##

?sample
set.seed(10)
sample(1:6, size= 10, replace=T)

# Simulate tosses of a pair of dice
# 1000 tosses of a pair dice
mytosses<- sample(1:6,2*1000,replace= T)
mytosses.mat<- matrix(mytosses, ncol= 2)
mysums<- apply(mytosses.mat, 1,sum)
sum(mysum==7)

mc.prob.sum.is.7= sum(mysum==7)/1000

# actual prob is 1/6
1/6

#mc error= 1/sqrt(num reps)
1\sqrt(1000)

# run for 10^ reps

