library(readr)
diabetes <- read.csv("E:/AED/EAS/diabetes.csv")
view(diabetes)
str(diabetes)

colSums(is.na(diabetes))
diabetes$Outcome <- as.factor (diabetes$Outcome)
library(ggplot2)

p1 <- ggplot(diabetes, aes(x=outcome, y=BMI, fill=Outcome))+geom_boxplot()
p2 <- ggplot(diabetes, aes(x=outcome, y=Glucose, fill=Outcome))+geom_boxplot()
p3 <- ggplot(diabetes, aes(x=Age, y=Glusocse, col=Outcome))
p3 + geom_point()
p3 + geom_smooth(method="loess")
p4 <- ggplot(diabetes, aes(x=Age, y=BMI, col=Outcome))

df1 <- diabetes$BMI[diabetes$Outcome == "0"]
df1 <- diabetes$BMI[diabetes$Outcome == "1"]

