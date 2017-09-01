
#data sets
data()
Nile
mean(Nile)
hist(Nile)
plot(Nile)

#Matrices and Columns
w<-c(3,5,8)
z<-c(9,2,1)
Mymatrix<-rbind(w,z)
Mymatrix
#Extract 1 from the matrix
Mymatrix[2,3]
#Pull out a column
#Easiest way is to leave row index blank
Mymatrix[,2]
#Pull out a row
Mymatrix[1,]

#Lists
#Holds a bunch of stuff like a vector and 
#a matrix
Mylist<-list(x="cat",y=c(3,1,4,1))
#can use <- or = as assignment operator
#Extraction
Mylist$x
Mylist$y
#Use lists for a histogram
#Example
myhist<-hist(Nile)
myhist$counts
str(myhist)

#Make a list where the first component is a 
#vector with 3 elements and the 2nd component 
#is a vector of 2 names

#need quotes for a char string

mylist<-list(x=c(3,5,2),y=c("cat","dog"))
#extract a single element from a vector
d<-mylist$y[2]
n<-mylist$x[1]
c(n,d)


