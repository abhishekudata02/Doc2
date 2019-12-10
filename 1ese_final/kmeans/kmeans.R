  d <- read.csv(file='/home/it/Desktop/kmeans.csv',sep=",")
  x <- d$x
  y <- d$y
  print(x)
  print(y)
 c1x=x[1]
 c1y=y[1]
 print(c1x)
 print(c1y)
 c2x=x[length(x)]
 c2y=y[length(y)]
 print(c2x)
 print(c2y)
 c11 <- c(c1x,c1y)
 c22 <- c(c2x,c2y)
 print("Initial c1 is")
 print(c11)
 print("Initial c2 is")
 print(c22)
 i=2
 while(i < length(x))
 {
   t1=x[i]
   t2=y[i]
   dis1x=(t1-c1x)*(t1-c1x)
   dis1y=(t2-c1y)*(t2-c1y)
   fdis1=sqrt(dis1x+dis1y)
   print(fdis1)
   
   dis2x=(t1-c2x)*(t1-c2x)
   dis2y=(t2-c2y)*(t2-c2y)
   fdis2=sqrt(dis2x+dis2y)
   print(fdis2)
   
   if(fdis1>fdis2)
   {
     print("Given point lies in c2")
     c2xx=(c2x+t1)/2
     c2yy=(c2y+t2)/2
     c2x=c2xx
     c2y=c2yy
     print(c2x)
     print(c2y)
     c22 <-c(c2x,c2y)
     print("Updated c2 is")
     print(c22)
   }
   else
   {
     print("Given point lies in c1")
     c1xx=(c1x+t1)/2
     c1yy=(c1y+t2)/2
     c1x=c1xx
     c1y=c1yy
     print(c1x)
     print(c1y)
     c11 <-c(c1x,c1y)
     print("Updated c1 is")
     print(c11)
     
   }
   i=i+1
 }
 print("Final c1 is")
 print(c11)
 
 print("final c2 is")
 print(c22)
 