## JITTER PLOT
ToothGrowth$dose <- as.factor(ToothGrowth$dose)
head(ToothGrowth)
library(ggplot2)
ggplot(ToothGrowth, aes(x=dose, y=len))+
  geom_jitter()

p <- ggplot(ToothGrowth, aes(x=dose, y=len))+
  geom_jitter(position=position_jitter(0.2))
p + coord_flip()
p + scale_x_discrete("0.5","2")

p <- ggplot(ToothGrowth, aes(x=dose, y=len))+
  geom_jitter(position=position_jitter(0.2), cex=1.2)

p <- ggplot(ToothGrowth, aes(x=dose, y=len))+
  geom_jitter(position=position_jitter(0.2), shape=18)

p + stat_summary(fun.y=mean, geom="point", shape=18, size=3, color="red")
p + stat_summary(fun.y=median, geom="point", shape=18, size=3, color="red")

ggplot(ToothGrowth, aes(x=dose, y=len))+
  geom_boxplot()+ geom_jitter(position=position_jitter(0.2))
ggplot(ToothGrowth, aes(x=dose, y=len))+
  geom_boxplot(notch = TRUE)+ geom_jitter(position=position_jitter(0.2))

ggplot(ToothGrowth, aes(x=dose, y=len))+
  geom_violin(trim=FALSE)+ geom_jitter(position=position_jitter(0.2))

p <- ggplot(ToothGrowth, aes(x=dose, y=len))+
  geom_jitter(position=position_jitter(0.2))
p + stat_summary(fun.data=mean_sdl, mult=1, geom="crossbar", width=0.5)
p + stat_summary(fun.data=mean_sdl, mult=1,
                 geom="pointrange", colors="red")
p <- ggplot(ToothGrowth, aes(x=dose, y=len, shape=dose))+
  geom_jitter(position=position_jitter(0.2))
p + scale_shape_manual(values=c(1,17,19))

par(mfrow=)