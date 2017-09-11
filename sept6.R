####lists####
mylist<- list(myvec=c(2,3,5),mynames =c('cat','dot'))
mylist$mynames[1]

####data frames####
data(mtcars)
#to see the entire data set
head(mtcars)
mynewlist<-list(name=c("Andrew","Keana"),score=c(99,100))
mydf<-data.frame(mynewlist)
mydf
mydf$name
mydf$score[2]

#removing elements by index
x<-c(4,6,8,9)
x<-x[-3]

y<-c(2,7,9,11)
y<-y[-c(1,3)]
rm(y)

#logical tests
x<-c(5,6,8,20)
x==6
x>10
which(x==6)
x[c(TRUE,TRUE,FALSE,FALSE)]
x[x>7]
x[which(x>7)]
subset(x,x>7)
 
 #dataframe
chickwts
subset(chickwts,feed=="linseed")
sum(x>7)
sum(chickwts$weight>200)

?seq
w<-seq(from=0, to=2, by=0.1)
w 


#NA and Null
y<-c(6,7,NA,10)
mean(y)
mean(y,na.rm=TRUE)
is.na(y)

w<-seq(from=5, to=10, by=0.3)
mean(w)
