library(ggplot2)
class(mtcars) #verify mtcars is a dataframe

p0<- ggplot(data= mtcars, aes(x= mpg))

# get the graph
p0+ geom_histogram(binwidth= 1)
# 'bins= 30' picked default bins

# change colors
p0+ geom_histogram(fill= "yellow", color= "black")
  +theme_minimal()

mtcars$cyl<- factor(mtcars$cyl)
mtcars$am<- factor(mtcars$am)

p1<- ggplot(data= mtcars, aes(x= mpg,y=disp,color= cyl, shape= am))
p1+geom_point()
class(mtcars$am)

#### Excercises ####

## 1 ##
chick.sub<- subset(ChickWeight, Time== 21)

## 2 ##
library(ggplot2)
p0<- ggplot(data= chick.sub, aes(x= weight))
p0+ geom_histogram(binwidth= 1)
p0+ geom_histogram(fill= "yellow", color= "black")
+theme_minimal()

## 3 ##
p1<- ggplot(data= iris, aes(x= Petal.Length, y= Petal.Width, color= Species))
p1+ geom_point()

library(RColorBrewer)
display.brewer.all()

 p1 <- ggplot(data= ChickWeight,aes(x= weight)
 p2 = p1+ggtitle("Chick Weight Data")
 p3 = p2+geom_density(aes(group= time,fill= time),color='white', alpha=0.3)
 p4 = p3+theme_classic()+scale_fill_brewer(palette="PuRd")
 p4
