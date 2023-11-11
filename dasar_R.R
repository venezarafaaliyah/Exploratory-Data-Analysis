#operasi matematika
4+3-2
(6+18)/6
2**3
2^3
2^(2*3)
x <- 3
x=3; x
y=4 ; y
z=x+y;z


a=1:10;a
c(1:10)
b=2:4; b
c(a,b)
c(1,a)
array(1,10)
seq(1,5)
seq(from=1,to=3,length.out = 6) #desired length of the sequence
AA <- letters [1:3]; AA
K <- c(3,2,1,3,2)
length(K)
K[2]
K[1:3]
K[-1]
K[2:5]

#naming a vector
# Poker winnings from Monday to Friday
pok_vect <- c(140, -50, 20, -120, 240); pok_vect
# Assign days as names of poker_vector
names(pok_vect) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
pok_vect

#matrix
matriks.1 = matrix(c(1,2,3,4,5,6),nrow=2,ncol=3);matriks.1
d=matrix(c(1,4,2,5,3,6),nrow=2,ncol=3);d
matriks.2 = matrix(1:6,nrow=2,ncol=3) ; matriks.2
data=c(6.4,8.8,7.5,5.3,7.6,9.5) ; data
matriks.a=matrix(data,nrow=3,ncol=2) ; matriks.a
dim(matriks.1)

#matrix operations
a=1:5;a
a*a
crossprod(a)
b=matrix(c(1:4),2);b
b*b
b%*%b
solve(b)
c=c(3,5);c
d=cbind(b,c); d
e=rbind(b,c);e

#example of vector and data frame
land=factor(c("Belgium","Denmark","France","GB","Ireland","Italy","Luxemburg","Holland","Portugal","Spain","USA","Japan","Deutschland"));
land
x=c(2.8,1.2,2.1,1.6,1.5,4.6,3.6,2.1,6.5,4.6,3,1.3,4.2)
y=c(9.4,10.4,10.8,10.5,18.4,11.1,2.6,8.8,5,21.5,6.7,2.5,5.6)
data1=data.frame(land,x,y);data1
colnames(data1)= c("countries","index","unemp");data1
income= c(12,10,13,9,8,10,11,12,13.5,14,10,11,13)
datanew = cbind(data1,income); datanew

jersey=read.csv("C:/Users/nkkmi/Documents/Semester 6/Tutor/jersey.csv", sep=";");jersey
View(jersey)
z = data.frame(jersey$data_value);z
