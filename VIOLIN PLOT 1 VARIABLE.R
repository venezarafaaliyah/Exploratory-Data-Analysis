#violinplot 1 variabel
library ("ggplot2")
f <- read.csv("E:/AED/EAS/FINAL PROJECT/FinalProject.csv")
f
weight <- (f$weight)
height <- (f$height)
age <- (f$age)

# Basic violin plot
p <- ggplot(f, aes(x=weight, y=height)) + 
  geom_violin()
p

ggplot(f, aes(x=weight, y=age, fill=weight)) + 
  geom_violin(trim=FALSE, fill="pink")+
  labs(title="Plot of Age by Weight",x="Weight", y = "Age")+
  theme_classic()

ggplot(f, aes(x=weight, y=height, fill=weight)) + 
  geom_violin(trim=FALSE, fill="pink")+
  labs(title="Plot of Height by Weight",x="Weight", y = "Height")+
  theme_classic()

ggplot(f, aes(x=height, y=age, fill=height)) + 
  geom_violin(trim=FALSE, fill="pink")+
  labs(title="Plot of Age by Height",x="Height", y = "Age")+
  theme_classic()