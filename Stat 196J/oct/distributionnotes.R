#### Exercise using normal distribution functions #####
## Suppose that IQs are normally distributed with mean 100 and standard
## deviation 15.

## 1 ##
## Generate a random sample of 20 IQs
sample<- rnorm(20, 100, 15)

## 2 ##
## Find the percent of people with IQs below 89. Find percent above 89.
below.89 <- pnorm(89, 100, 15, lower.tail = TRUE)
below.89
# lower.tail= TRUE will calculate area to the left of 89
above.89<- pnorm(89,100,15, lower.tail= FALSE)
above.89
# lower.tail= FALSE will calculate area to the right of 89
# the right area should be higher than the left area

## 3 ##
## Find the percent of people with IQs between 110 and 140
below.140<- pnorm(140, 100, 15, lower.tail = TRUE)
below.110 <- pnorm(110, 100, 15, lower.tail = TRUE)
between.110.and.140 <- below.140 - below.110
between.110.and.140

## 4 ##
## Find the 90th percentile of IQ's
percentile.90<- qnorm(0.90, 100, 15)
percentile.90

## 5 ##
## Find the height of the normal curve at IQ= 100 and IQ= 107. 
## Which should be higher?
IQ.100 <- dnorm(100, 100, 15)
IQ.107 <- dnorm(107, 100, 15)
# IQ= 100 would be higher, since the mean= 100 and is in the middle.

###########################################################################

#### Normal and Binomial Probability in R ####

## 1 ## 
## Heights adult females Normal
## mean= 64 inches sd= 2.5 inches

## a ##
# Use R to find the percent of adult females

# i #
# under 5 feet
ft.to.inches <- 12 * 5
under.5ft <- pnorm(ft.to.inches, 64, 2.5, lower.tail = TRUE)
# ii #
# over 6 feet
ft.to.inches <- 12 * 6
over.6ft <- pnorm(ft.to.inches, 64, 2.5, lower.tail = FALSE)
# iii #
# between 61 inches and 65 inches
below.65 <- pnorm(65, 64, 2.5, lower.tail = TRUE)
below.61 <- pnorm(61, 64, 2.5, lower.tail = TRUE)
between.61.and.65 <- below.65 - below.61

## b ##
# Find the 95th percentile
percentile.95 <- qnorm(.95, 64, 2.5)

## c ##
# Randomly generate 20 female heights
random.20 <- rnorm(20, 64, 2.5)

## d ## 
# Find the height of normal curve w/ mean= 64 nd sd= 2.5

# i #
# x= 64
x.64<- dnorm(64,64,2.5)
# ii #
# x= 68
x.68<- dnorm(68,64,2.5)


