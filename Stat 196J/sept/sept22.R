## One-hot Encoding

party<- c('r','d','d','r','d','o','d','r','r')

rep<- ifelse(party== 'r',1,0)
dem<- ifelse(party== 'd',1,0)
other<- ifelse(party== 'o',1,0)

part.data<- cbind(rep,dem,other)
part.data

class<-c('f','soph','j','sr','f','f','j')

fresh<- ifelse(class== 'f',1,0)
soph<- ifelse(class== 'soph',1,0)
juin<- ifelse(class== 'j',1,0)
sein<- ifelse(class== 'sr',1,0)

class.data<- cbind(fresh,soph,juin,sein)
class.data

gender<- c(1,1,2,2,1,2,1,1,1)
summary(gender)

gender.factor<- factor(gender,levels= c(1,2),labels= c('male','female'))
summary(gender.factor)

View(mtcars)
str(mtcars)

summary(mtcars)

mtcars$am<- factor(mtcars$am, levels= c(0,1), labels= c('automatic','manual'))
summary(mtcars)

mtcars$vs<- factor(mtcars$vs)
summary(mtcars)

table(mtcars$vs,mtcars$am)

mylist<- split(mtcars,mtcars$am)
mean(mylist$manual[,1]) # mean mpg for manual
mean(mylist$manual$mpg)

by(mtcars,mtcars$am,summary)
boxplot(mtcars$mpg~mtcars$am)

