data = read.csv(file = "/home/mohya/thispc/academic/be/5DM/dmprac/1ese_final/4regreCoe/regreCoe.csv", sep = ",")

x  = data$x
y  = data$y

sumx = 0
for (val in x)
{
  sumx = sumx + val
}

sumy = 0
for (val in y)
{
  sumy = sumy + val
}


meanx = sumx/length(x)
x2 = c()
for(val in x)
{
  x2 = c(x2, val - meanx)
}

meany = sumy/length(y)
y2 = c()
for(val in y)
{
  y2 = c(y2, val - meany)
}

up = c()
for (i in 1:length(x2))
{
  up = c(up, x2[i] * y2[i])
}

upf = 0
for(i in 1:length(up))
{
  upf = upf + up[i]
}

x2sq = c()
for(i in 1:length(x2))
{
  x2sq = c(x2sq, x2[i] * x2[i])
}

y2sq = c()
for(i in 1:length(y2))
{
  y2sq = c(y2sq, y2[i] * y2[i])
}

downf = sqrt(sum(x2sq) * sum(y2sq))

r = upf / downf
print(r)

sigx = sqrt(sum(x2sq) / length(x2sq))
sigy = sqrt(sum(y2sq) / length(y2sq))

b = r * (sigy / sigx)
print(b)

m = meany - (b * meanx)
print(m)






