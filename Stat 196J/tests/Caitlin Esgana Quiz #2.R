
for(i in 1:5)
{print(rep('&',i), quote=TRUE)}

# 1. It prints out five &, because they are each true.

#2 
for(i in 1:3)
{print(rep('*',6), quote=FALSE)}

#3
for(i in 7:1)
{print(rep('*',i), quote=FALSE)}


#4
for(i in 6:1)
{print(c(rep('*',i),rep(' ',(6-i)*2),rep('*', i)), quote=FALSE)
  }