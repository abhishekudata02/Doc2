#binning by equal frequency
data = read.csv(file = "/home/mohya/thispc/academic/be/5DM/dmprac/1ese_final/1binning/lin.csv", sep= ",")

x <-data$x
print(x)

x <-sort(x)
print(x)

len = length(x)
noOfPartitions = 4

print(max(x))
print(min(x))

print(as.integer((max(x)-min(x))/noOfPartitions))
z=((max(x)-min(x))/noOfPartitions)
st<-min(x)*1
print(st)
end<-min(x)*1+z
print(end)
for(i in 1:noOfPartitions)
{
  a <- c()
  for(j in  1:len)
  {
    if(x[j]>=st && x[j]<=end)
    {
    a <- c(a,x[j])
    }
  }
  print(a)
  st=end
  end=end+z
}






