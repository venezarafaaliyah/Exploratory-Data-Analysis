#install.packages("ggplot2")
#install.packages("Hmisc")

library ("ggplot2")
library ("Hmisc")

ToothGrowth$dose<- as.factor(ToothGrowth$dose)
head (ToothGrowth)

p <- ggplot (ToothGrowth, aes(x=dose, y=len)) + geom_violin()
p
p + coord_flip()

ggplot(ToothGrowth, aes (x=dose, y=len)) + geom_violin(trim=FALSE)
p + scale_x_discrete(limits=c("0.5","2"))

stat_summary()

p + stat_summary(fun, y = mean, geom = "point", shape = 23, size =2)

p + stat_summary(fun, y = medan, geom = "point", size = 2, color = "red")

p + geom_boxplot (width= 0.1)

p <- ggplot (ToothGrowth, aes(x=dose, y=len)) + geom_violin(trim = FALSE)
P + stat_summary(fun.data = "mean_sdl", mult=1, geom = "crossbar", width = 0.2)
p + stat_summary (fun.data="mean_sdl", mult = 1, geom="pointrange", color = "red")

data_summary <- function (x){
  m <- mean (x)
  ymin <- m-sd(x)
  ymax <- m+sd (x)
  return(c(y=m, ymin=ymin, ymax=ymax))
}

p + stat_summary(fun, data = data_summary)

p + geom_point (binaxis = 'y', stackdir = 'center', dotsize = 1)

p + geom_jitter (shape=16, position = position_jitter(0.2))

p <- ggplot (ToothGrowth, aes (x=dose, y = len, color = dose)) + geom_violin(trim=FALSE)

p

p + scale_color_manual(values = c ("#999999", "#E69f00","#56B4E9"))

P + scale_color_brewer(pallete="Dark2")

p + scale_color_grey() + theme_classic ()


ggplot(ToothGrowth, aes(x=dose, y=len)) + geom_violin(trim=FALSE, fill = 'yellow', color = "darkred")+ geom_boxplot(width=0.1) + theme_minimal ()

p <- ggplot (ToothGrowth, aes(x=dose, y = len, fill=dose))


p + theme(legend.position = "top")
p + theme(legend.position = "bottom")
p + theme(legend.position = "none")

p + scale_x_discrete(limits=c("2", "0.5", "1"))

ggplot (ToothGrowth, aes(x=dose, y=len, fill=supp)) + geom_violin()
p <- ggplot(ToothGrowth, aes(x=dose, y=len, fill=supp)) + geom_violin (position=position_dodge(1))
p
p + geom_dotplot (binaxis = 'y', )