#### Caitlin Esgana 
#### Stat 196 J
#### Norris

#### Homework 3: Matrices ####

## Problem 1 ##
# matrix of coefficients
D<- matrix(c(2,5,10,3,-1,-3,7,8,50), nrow= 3)
# vector of constants
b<- c(5,1.2,11)

## 1a ##
# determinant of matrix D
det.D<- det(D)
# create matrices with vector b in each column
Dx<- cbind(b,D[,2:3])
Dy<- cbind(D[,1],b,D[,3])
Dz<- cbind(D[,1:2],b)
# determinants of matrices with vector b in each column
det.Dx<- det(Dx)
det.Dy<- det(Dy)
det.Dz<- det(Dz)
# using Cramer's Rule, divide the determinants of Dx,Dy,and Dz 
# each by the determinant of D
x<- det.Dx/det.D
y<- det.Dy/det.D
z<- det.Dz/det.D

## 1b ##
# the inverse of matrix D matrix multiplied by vector b
solve(D)%*%b 
# Same solution as in part(a)

## 1c ##
# solutions x,y, and z are plugged back into the 3 original 
# equations
eq.1<- (2*x)+(3*y)+(7*z)
eq.2<- (5*x)-y+(8*z)
eq.3<- (10*x)-(3*y)+(50*z)

## 1d ##
# i #
# uses the apply function to find the sd of each column of 
# matrix D
col.sds<- apply(D,2,sd)
col.sds
# ii #
# creates a 3x3 matrix filled columnwise by values 2,4,6,...,18
E<- 2*matrix(1:9,nrow= 3, byrow= F )
# elementwise multiplication
D*E
# iii #
DE<- cbind(D,E)

## Problem 2 ##

## 2a ##
# creates 40000 uniform distributed samples in the interval (0,1)
samples.sim<- runif(8000, min= 0, max= 1)
# histogram of the samples
hist(samples.sim)
# stores the samples in a matrix column wise 
matrix.sim<- matrix(samples.sim, ncol= 2)

## 2b ##
# uses the apply function to find the sample mean of each row
row.means<- apply(matrix.sim,1,mean)
row.means

## 2c ##
# creates a histogram of the 4000 sample means
hist(sample.mean)
# The histogram is evenly distributed.

## 2d ##
# calculates the mean of the 4000 sample means
sample.mean<- mean(row.means)
sample.mean
# theoretic mean value
mean<- 0.5
# calculates the standard deviation of the 4000 sample means
sample.sd<- sd(row.means)
sample.sd
# theoretic standard deviation value
sd<- sqrt(1/12)
#Yes, the mean and standard deviation from the 4000 sample means
# are close to the theoretic values.

## 2e ##
samples.sim<- runif(120000,min= 0,max= 1)
matrix.sim<- matrix(samples.sim, ncol= 30)
row.means<- apply(matrix.sim,1,mean)
sample.mean<- mean(row.means)
sample.mean
sample.sd<- sd(row.means)
sample.sd
# It is still true.

## Problem 3 ##

## 3a ##
# creates a matrix with the first and seconds columns of 1s
X<- matrix(1, nrow=5,ncol= 2) 
# replaces column 2 with hw scores
X[,2]<- c(90,35,100,77,80)
# creates vector y containing final exam scores
y<- c(26,27,91,65,81)

## 3b ##
# matrix multiplication of the transpose of X and X
XTX<-t(X) %*% X

## 3c ##
# calculation that gives coefficients of the regression line
# (intercept,slope)
coeff<- solve(XTX) %*% (t(X) %*% y)

## 3d ##
# extracted the coefficients from the matrix coeff
intercept<- coeff[1,]
slope<- coeff[2,]
# scatterplot of the data
plot(x= X[,2],y= y,type="p")
# regression line
abline(a= intercept, b= slope)
