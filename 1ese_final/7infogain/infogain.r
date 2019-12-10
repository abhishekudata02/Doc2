expectedInfo <- function(X, total){
  Y = table(X)
  x = sum(Y/total * log(base = 2, total / Y))
  if(is.nan(x))
  {
    x = 0
  }
  return (x)
}
  
library(sqldf)
data <- read.csv(file="/home/arcanin3/dmprac/1ese_final/7infogain/Book1.csv",sep=",")

partialentropy <- function(attr)
{
  queryRes = fn$sqldf("select play from data where Outlook='$attr'")
  tab = table(queryRes)
  res = expectedInfo(queryRes, sum(tab))
  print(res)
  return (res)
}

#print(expectedInfo(data$Play,length(data$Play)))
a = partialentropy("Sunny")
b = partialentropy("Rainy")
c = partialentropy("Overcast")


entropy <- function(attr)
{
  tt = unique(data[attr])
  gain = 0
  ttTable = table(data[attr])
 
  for(i in tt)
  {
    for(j in levels(i))
    {
      gain = gain + ((partialentropy(j) * ttTable[j]) / 14)
    }
  }
  print(gain)
  #print(ttTable[names(ttTable) == toString(i)])
  #gain = gain + (partialentropy(i) * )
  
  #queryRes = fn$sqldf("select play from data where Outlook='$attr'")
  #tab = table(queryRes)
  #res = expectedInfo(queryRes, sum(tab))
  #print(res)
}

entropy("Outlook")
