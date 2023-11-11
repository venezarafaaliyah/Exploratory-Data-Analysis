# GaussianKernel
d <- c(107, 97, 99, 104, 103, 94, 102, 94, 102, 106)
h  <- 1
pi

GK <- function(u) {(1/sqrt(2*pi))*exp(-(u^2)/2)} # or dnorm(u)

DensityGraph <- function(x, h){
  n    <- length(x)
  xi   <- seq(min(x) - sd(x), max(x) + sd(x), length.out = 512)
  
  # fhat without sum since we are interest in the bell shaped curves
  fhat <- sapply(x, function(y){(1/(n*h))*GK((xi - y)/h)})
  
  # histogram of x
  hist (x, freq = FALSE, main = "Kernel Density with Histogram of River Monsters",
        xlab = paste("N = ", n, "   ", "Bandwidth = ", h), ylim = c(0, 0.15))
  
  # add fhat with sum
  lines(xi, rowSums(fhat), lwd = 2)
  
  # add the bell shaped curves
  apply(fhat, 2, function(j) lines(xi, j, col = 4))
  
  # show data points
  rug  (x, lwd = 2, col = 2)
}

DensityGraph(d, h)