## ggplot ##

# Adding Layers
# geo_smooth(methpd= 'lm') smooth line

# convert to factors, so not treated as a continuous variable
#aes(group= chick) each line will rep a chick

# How to use cheatsheet ggplot examples
library(ggplot2)

j<- ggplot(economics, aes(x= date, y= unemploy))
j+ geom_line()

## Animation ## 
library(magick)
funny.raft.pic<- image_read('https://i.imgur.com/Q6v0DF7.jpg')
donkey.pic<- image_read('http://www.csus.edu/indiv/n/norrisa/two%20baby%20mini%20donkeys1.jpg')
funny.raft.pic
donkey.pic.

pic.bundle<- c(funny.raft.pic, donkey.pic)
pic.bundle
image_animate(pic.bundle, fps= 0.1)
donkey.pic.smaller<- image_resize(donkey.pic, '60%')
pic.bundle<- c(funny.raft.pic, donkey.pic.smaller)
