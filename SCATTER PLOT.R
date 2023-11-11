library(esquisse)
data <- read.csv("E:/AED/EAS/FINAL PROJECT/FinalProject.csv")
View(data)

ggplot(data =data, aes(x = height, y = age)) + geom_point()
ggplot(data =data, aes(x = height, y = age)) + geom_point(color="red", shape=19)
ggplot(data =data, aes(x = height, y = age)) + geom_point(color="red", shape=19)+geom_abline()
ggplot(data =data, aes(x = height, y = age)) + geom_point(color="red", shape=19)+
  geom_abline(intercept = 0, slope=3)
ggplot(data =data, aes(x = height, y = age)) + geom_point(color="red", shape=19)
+geom_abline(intercept = 0, slope=3, color="blue", linetype=2)
ggplot(data =data, aes(x = height, y = age))+ geom_point(color="red", shape=19)
+geom_smooth(formula=y~x)
ggplot(data =data, aes(x = height, y = age)) + geom_point(color="red", shape=19)
+geom_smooth(formula=y~x,method = "lm")
ggplot(data =data, aes(x = height, y = age)) + geom_point(color="red", shape=19)+
  geom_smooth(formula=y~x,method = "lm", se = T, level = 0.95)
ggplot(data =data, aes(x = height, y = age)) + geom_point() + 
  geom_smooth(formula = y ~ poly(x,2), method = "lm", se = T, level = 0.9)
