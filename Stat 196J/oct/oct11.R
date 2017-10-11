## Monte Carlos ##
set.seed(30)
days<- 1:7
# number of days calls are received
num.days<- NULL
reps= 40000

for(i in 1:reps){
  days.each.person.calls<- sample(1:7, size= 12, replace= TRUE)
  num.days[i]<- length(unique(days.each.person.calls))
}

sum(num.days== 7)/reps

# quiz on friday stuff from mon

# T apply used for a data frame where there is a factor/categorical

library(MASS)
View(Pima.tr)
str(Pima.tr) # type is not numeric
?tapply
# calculate the mean glucose for each category in type column
tapply(Pima.tr$glu, Pima.tr$type, FUN= mean)
# correlation matrix
pima.num.vars<- Pima.tr[, -c(8)]
View(pima.num.vars)
View(cor(pima.num.vars))

## Supervised Learning ##
# homogenous groups are good for predicting

