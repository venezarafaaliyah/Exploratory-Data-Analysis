# Change the width of bars
ggplot(data=df, aes(x=dose, y=len)) + geom_bar(stat="identity",
                                               width=0.5)
# Change colors
ggplot(data=df, aes(x=dose, y=len)) + geom_bar(stat="identity",
                                               color="blue", fill="white")
# Minimal theme + blue fill color
p<-ggplot(data=df, aes(x=dose, y=len)) + geom_bar(stat="identity",
                                                  fill="steelblue")+ theme_minimal()
p


df <- data.frame(dose=c("D0.5", "D1", "D2"), len=c(4.2, 10, 29.5))
head(df)
library(ggplot2)
# Basic barplot
p<-ggplot(data=df, aes(x=dose, y=len))
+ geom_bar(stat="identity")
p
# Horizontal bar plot
p + coord_flip()