library(ggplot2)
p <- ggplot(ToothGrowth, aes(x=dose, y=len)) + geom_violin()
p
ggplot(ToothGrowth, aes(x=dose, y=len)) + geom_violin(trim=FALSE)
head (mtcars)
ggplot(mtcars, aes(x=drat, y=mpg))
ggplot ( mtcars, aes(x=drat, y=mpg))+ geom_point()

theme_set(theme_bw())
data("midwest", package = "ggplot2")
read.csv("http://goo.gl/G1K4")
ggplot(midwest, aes(x=area, y=poptotal)) + geom_point (aes(col=state, size=popdensity))+
  geom_smooth(method="loess", se=F) +
  xlim (C(0,0.1))+
  ylim (c(0, 500000))+
  labs (subtitle= "Area vs Population", y="Population", x= "Area", title = "Scatterplot", caption = "Source:midwest")
plot(gg)
