## If-then loops ##

y<- 5
if(y> 2) {bignum<- "yes"} else {bignum<- "no"}
bignum

y<- 1.1
if (y> 2) {bignum<- "yes"} else{bignum<- "no"}
bignum

# FB want to use a condition to save numbers using if-else

#If-then in a for-loop ##

myvec<- c(6,3,4,10)
for(i in 1:4) {
  if (myvec[i] > 5) {print(myvec[i])}
  else {print("not larger than 5")}
}

# need this for FN hw
myvec<- c(6,3,4,10,2,555)
largenums<- NULL
for(i in 1:length(myvec)) {
  if (myvec[i] > 5) 
    # don't need else 
      {largenums <- c(largenums,myvec[i])}
}
largenums

# count how many 
x<- c(10,3,4,6,8)
over5count<- 0 #initialize counter
for (i in 1:length(x)) {
  if (x[i] > 5)
  {over5count <- over5count+1}
  print(over5count)
}
over5count

## Exercises ##

x<- c(8,1,22,3,7)

#1a
i<- 3
if (x[i]< 10) {print("yes")} else {print( "no")}

#1b
x<- c(8,1,22,3,7)
for(i in 1:length(x)) { 
  if (x[i] < 10) {print(x[i]){
    smallnums <- c(smallnums,x[i])
  }else {
    print("not smaller than 10")
  }
}

y<- NA
for(i in 1:5)  
{y[i] <- 3*x[i]}

# time elapse
system.time(3*1:1000000)

## Plot ##

x<- c(0,1,5)
y<- c(-3,2,7)
plot(x,y, type='l',main= "a fun plot",xlab="time")
?par
