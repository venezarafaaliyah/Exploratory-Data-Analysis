tulip <- c(81,50,27)
res <- chisq.test(tulip, p=c(1/3,1/3,1/3))
res

tulip <- c(81,50,27)
res <- chisq.test(tulip, p=c(1/2,3/6,1/6))
res

install.packages("dgof")
library("dgof")
library (dgof)
x<- rnorm(50)
y <- runif (30)
ks.test(x,y)
