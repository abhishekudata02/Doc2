data <- read.csv(file = "/home/mohya/thispc/academic/be/5DM/dmprac/1ese_final/2normalization/norm.csv", sep= ",")
print(data)

print(data$x)
var = data$x

newmin = 0.0
newmax = 1.0

norm = c()

for(i in var)
{
  temp = ((i - min(var)) / (max(var) - min(var))) * (newmax - newmin) + newmin
  norm = c(norm, temp)
}

print(norm)

