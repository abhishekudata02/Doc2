#binning by equal frequency
data <- read.csv(file = "/home/mohya/thispc/academic/be/5DM/dmprac/1ese_final/1binning/lin.csv", sep= ",")
x <-data$x
print(x)
x <-sort(x)
print(x)
len=length(x)
noOfPartitions=4

partitionSize=(len/noOfPartitions)
#print(len)
#print(partitionSize)
for(i in 1:noOfPartitions)
{
  a <- c()
  #print((i-1)*partitionSize+1)
  #print(i*partitionSize)
  for(j in (((i-1)*partitionSize)+1):(i*partitionSize))
  {
     if(j>len)
       break;
     a <- c(a,x[j])
  }
 print(a)

}


  

