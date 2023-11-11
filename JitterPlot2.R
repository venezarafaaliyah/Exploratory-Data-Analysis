theme_set(theme_bw())
data("midwest", package = "ggplot2")
read.csv("http://goo.gl/G1K41K")
ggplot(midwest, aes(x=area, y=poptotal)) +
  geom_point (aes(col=state, size=popdensity))+
  geom_smooth(method="loess", se=F) +
  xlim 
library(ggplot2)(C(0,0.1))+
  ylim (c(0, 500000))+
  labs (subtitle= "Area vs Population", 
        y="Population", x= "Area", 
        title = "Scatterplot", caption = "Source:midwest")
plot(gg)
