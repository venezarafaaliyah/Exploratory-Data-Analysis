library (ggplot2)
data(mpg.package="ggplot2")
#mpg <- read.csv("http://goo.gle/uEeRGu")
#Scatterplot
theme_set(theme_bw())
g <- ggplot(mpg.aes(cty,hwy))
g+geom_jitter(width=5, size=1)+
  labs(subtitle="mpg: cit vs highway mileage", 
       y ="hwy", x="city", title "Jittered Points")
