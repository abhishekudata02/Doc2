dataset = read.csv(file="/home/arcanin3/dmprac/1ese_final/8tandd/weight.csv", sep=',')
#print(dataset)


dataTV=dataset$TV
print(length(dataTV))

print('T- weight')
for(i in 1:length(dataTV))
{
  print((dataTV[i]/sum(dataTV))*100)
}

dataPC=dataset$PC
print(length(dataPC))

for(i in 1:length(dataPC))
{
  print(dataPC[i]/sum(dataPC))
}

dataTV_PC=dataset$TV.PC
for(i in 1:length(dataTV_PC))
{
  print(dataTV_PC[i]/sum(dataTV_PC))
}

print('T- weight')
print(dataTV[1]/dataTV_PC[1])
print(dataTV[2]/dataTV_PC[2])
print(dataPC[1]/dataTV_PC[1])
print(dataPC[2]/dataTV_PC[2])