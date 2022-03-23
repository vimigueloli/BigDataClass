x <- 5
y <- 2
print(y)
ls()
rm(x)
rm(list = ls())

class('olá')
class(1)
class(1L)
class(TRUE)
class(F)

is.integer(x)  

x <- c(0.5,3.1,0.6,1.5)

x <- c(0.5,3.1,0.6,1.5, "4")

y <- 1:10

y <- seq(from= 1 , to=10, by=5)

x <- rep(x = c(1,2,3), times=5, each = 2)

x <- c(1.3, 2.1, 1.7,T)

x <- c(TRUE,2, FALSE)

x <- -1.3:3

x <- as.integer(x)

vector(mode = 'logical', length=5)

m <- matrix(nrow=2 ,ncol = 3)

m

attributes(m)

m <- matrix(data = 1:6, nrow = 2, ncol = 3)

m[2,3]

m <- matrix(data = 1:6, nrow = 2, ncol = 3, byrow=TRUE)

dim(m) <- c(3,2)


x <- 1:3
y <- 7:9

rbind(x,y)
cbind(x,y)

x <- list("s", 2.3, F)

factor(c('yes', 'no', 'yes'))
factor(c('yes', 'no', 'yes'), levels = c("yes", "no"), ordered=T)


name <- c('alice', 'bob', 'julia')
age <- c(19,21,20)
dados <- data.frame(nome= name, idade = age)
dados

