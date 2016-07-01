# chapter1.R

mydata <- read.table("http://s3.amazonaws.com/smt201-16/mydata2.txt")
a <- mydata[2] 
m <- 10
amin <- min(a)
amax <- max(a)
h <- (amax -amin)/m
xr <- matrix(0,m,1)
for(i in 1:m){ xr[i,1] <- amin + i*h }
xc <- xr - h/2
frq <- matrix(0,m,1); frq[1,1] <- 1
for(i in 1:m){ frq[round(a[i,1]/h),1] <- frq[round(a[i,1]/h),1] +1 }
sseries <- cbind(xc,frq)
save(xc,frq, file="chap1_4.Rdata")
rm(a,amin,amax,m,h,xr)

