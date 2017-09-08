#### Problem 1 ####

# a
w<- c(45, 7, 5, 8, 11)

# b
mean(w)
var(w)
sd(w)

# c
w.sq <- w ^ 2

# d
sum.w.sq <- sum(w ^ 2)

# e
n<- length(w)
w.var.comp<- (1/(n-1))*(sum.w.sq-(n*(mean(w)^2)))

# f
w.doubled<- w*2
mean.doubled.data<- mean(w.doubled)
sd.doubled.data<- sd(w.doubled)
# They relate to the mean and standard deviation in part (b),
# because they are just multiplied by 2.
w.tripled<- w*3
# The mean and standard deviation will be tripled.

# g 
w.add.5<- w+5
mean.add.5<- mean(w.add.5)
sd.add.5<- sd(w.add.5)
# The mean changes by increasing by 5, but the standard
# deviation stays the same.

#### Problem 2 ####

row1<- c(1,5,3)
row2<- c(4,7,9)
row3<- c(3,2,9)
matrix1<- rbind(row1,row2,row3)

# a
col3<- matrix1[,3]

# b
myelement<- matrix1[3,2]

# c
2:5
matrix2<- matrix(2:5, nrow=2, ncol=2)

# d
t(matrix2)
##It transposes the matrix.
det(matrix2)
## it gives the determinant of the matrix.

#### Problem 3 ####
nums<- matrix(2:2, nrow=2, ncol=2)
names<- c("Ruby", "Miguel", "Tiffany", "Tyler")
mylist<-list(mynums= nums, mynames= names)
  
# a
mylist$mynums
mydet<- det(mylist$mynums)

# b
favname<- mylist$mynames[3]

#### Problem 4 ####

# a
swiss
ag.col<- swiss[,2]

# b
mean.perc.male.ag<- mean(ag.col)

# c
row40<- swiss[40,]

# d
summary(swiss)

#### Problem 5 ####
input<- 14
function1<- function(input) 
{
  function1output<- input+sqrt(input)
  return(function1output)
}
function1(input)

#### Problem 6 ####
base<- 3.7
height<- 4.6
areaOfATriangle<- function(base,height)
{
  function2out<- (base*height)/2
  return(function2out)
}  
areaOfATriangle(base,height)

#### Problem 7 ####
x1<-1
x2<--2
y1<-5
y2<-7.4
distance<- function(x1,x2,y1,y2)
{
  function3out<- sqrt( ((x2-x1)^2)+((y2-y1)^2))
  return(function3out)
}
distance(x1,x2,y1,y2)






