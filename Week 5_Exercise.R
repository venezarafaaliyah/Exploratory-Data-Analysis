# 0. Congrats if this is your programming in R!
print("Hello World")

# 1. Setting up your directory
getwd()
setwd("C:/Users/ACER/Downloads")

# 2. Getting to know data types
typeof("o")    #character
typeof(16.7)   #double (numeric)
typeof(5L)     #integer
typeof(FALSE)   #logical
typeof(2+1i)   #complex

class(16.7)    #numeric

# 3. Data Structures in R
## 3.1 Vector
Vec1 <- c(7,5,6,2,3)
Vec2 <- c(7,FALSE,"Hello",9.555)
typeof(Vec1)
typeof(Vec2)

## 3.2 List
list1<- list(7,5,6,2,3)
print(list1)

## 3.3 Matrix
M1 <- matrix(c(1:9),nrow=3,ncol=3,byrow=TRUE)
print(M1)
?matrix

## 3.4 Data Frame
empid <- c(1:3)
empname <- c ("Sekar", 'Anin', "John")
empdept <- c("RnD","HRD","Technician")
emp.data <- data.frame(empid,empname,empdept)
print(emp.data)

## 3.5 Factor
dt <- c("Doctor","Nurse","Apoteker")
print(dt)
factor.dt <- factor(dt)
print(factor.dt)

## 3.6 Array
as.array(letters)
class(letters)
typeof(letters)

# 4. Letter Value using R
data <- read.csv("C:/Users/ACER/Downloads/avocado.csv")
View(data)

#Install.packages('lvplot')
library(lvplot)
head(data)
tail(data)
data$AveragePrice

data_new <- as.numeric(data$AveragePrice)
LVboxplot(data_new, k = 8, xlab = 'Average Prices of Avocado', bg="white")

#install.packages("DPQ")
library(DPQ)
source("http://mgimond.github.io/ES218/es218.R")
lsum(data_new)

