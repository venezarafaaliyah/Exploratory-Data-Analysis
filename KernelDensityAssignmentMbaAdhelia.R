xi = matrix(c(101,97,99,104,103,94,102,106))
x = matrix(c(90:110))

kernel=function (a,b)
{
  n= nrow(a)
  n= nrow(b)
  fx= matrix(nrow= n,ncol= 1)
  k= matrix(nrow= n, ncol= 1)
  sumk = matrix(c(0), nrow= n, ncol= 1)
  phi=3.14159265358979
  
  for (i in 1:n)
  {
    for ( j in 1:n)
    {
      k[j]=exp((-1/2)*(a[1]-b[j])^2)
      sumk[1]-sumk[1]+k[j]
    }
    fx[1]-(sumk[1]/(n*(sqrt(2*phi))))
  }
  data.frame(fx,row.names=a)
}
source("E:\\AED\EAS\Kernel Density.pdf")
manual= kernel(x,xi) ; manual
hist(xi, freq= FALSE)
#plot(x,manual$fx,xlab="f(x)",xlab="x",main="Kernel Estimation Plot", col='blue')
lines(x,manual$fx,col='green')
#polygon(x,manual$fx,ylab="f(x)",xlab="x",main="Kernel Estimation Plot",col='darkgreen')


