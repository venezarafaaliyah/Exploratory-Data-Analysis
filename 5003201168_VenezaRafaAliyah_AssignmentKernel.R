seq (90,110)
x=c(101, 97, 99, 104, 103, 94, 102, 94, 102, 106) 
x
head(x)
density(x)
hist(x, freq = F )
plot (density(x), bty="n", xlim=c(90,110), xlab="x", main="density")
polygon (density(x),col="blue")
library(ggplot2)

