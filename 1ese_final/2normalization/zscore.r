data <- read.csv(file = "/home/mohya/thispc/academic/be/5DM/dmprac/1ese_final/2normalization/norm.csv", sep= ",")

var = data$x
mean_result <- mean(var)
sd_result <- sd(var)

print(mean_result)
print(sd_result)

norm = c()
for(i in var)
{
  norm = c(norm, ((i - mean_result) / sd_result))
}

print(norm)

