f <- read.csv("FinalProject.csv")
f
weight <- (f$weight)
height <- (f$height)
age <- (f$age)
boxplot(x=age, data=f,
        col=(c("Pink","darkgreen")),
        main="Boxplot of Age", xlab="Age")

boxplot(x=weight, data=f,
        col=(c("Pink","darkgreen")),
        main="Boxplot of Weight", xlab="Weight")

boxplot(x=height, data=f,
        col=(c("Pink","darkgreen")),
        main="Boxplot of Height", xlab="Height")
