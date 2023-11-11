f <- read.csv("E:/AED/EAS/FINAL PROJECT/FinalProject.csv")
f
weight <- (f$weight)
weight
mean(weight)
mode(weight)
ggplot(f, aes(weight))+
  geom_histogram(col="pink",fill="yellow", alpha = .2)+
  labs(title="Histogram for weight", x="weight", y="Count")

height <- (f$height)
height
ggplot(f, aes(height))+
  geom_histogram(col="pink",fill="yellow", alpha = .2)+
  labs(title="Histogram for height", x="height", y="Count")

age <- (f$age)
age
ggplot(f, aes(age))+
  geom_histogram(col="pink",fill="yellow", alpha = .2)+
  labs(title="Histogram for age", x="age", y="Count")

hist(weight)
hist(age,main="Histogram for Age", breaks = 30,
     xlab="age",
     col="pink")
