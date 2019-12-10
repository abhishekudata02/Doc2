data = read.csv(file = "/home/arcanin3/dmprac/1ese_final/5fiveNum/fiveNum.csv")
print(data)

var = data$ans
print("data")
print(var)

len = length(var)

#sort
print("sorted data")
temp = 0
for(i in 1:(len-1))
{
  for(j in (i+1):len)
  {
    if(var[i] > var[j])
    {
      temp = var[i];
      var[i] = var[j];
      var[j] = temp;
    }
  }
}
print(var)

#min
min = var[1]
for(i in len)
{
  if(var[i] < min)
    min = var[i]
}
print("min")
print(min)

#max
max = var[1]
for(i in len)
{
  if(var[i] > max)
    max = var[i]
}
print("max")
print(max)

#median
if(len %% 2 == 1)
  temp = ((len - 1) / 2) + 1
if(len %% 2 == 0)
  temp = (var[(len/2)-1] + var[(len/2)+1])/2
median =  var[temp]
print("median")
print(median)

#q1
print("quantile 1")
print((min + median) / 2)

#q3
print("quantile 3")
print((median + max) / 2)

#boxplot
sort(var)
boxplot(var)

