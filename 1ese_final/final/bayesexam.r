dataset=read.csv(file="C:\\Users\\Kotkar and Sons\\Videos\\compDataset.csv", sep=',')

checkProbability <- function(income,student,credit_rating,buys_computer)
{
  arg=as.list(match.call())
  print(arg)
  Colnames=colnames(dataset)
  #print(Colnames[length(Colnames)])
  divcount=nrow(dataset[dataset[[Colnames[length(Colnames)]]]==buys_computer, ])
 # print(divcount)
  Colnames=Colnames[-length(Colnames)]

  res=1
  
  for(col in Colnames)
  {
  #  print(col)
    var=arg[col]
    db=dataset[dataset[[col]]==var, ]
    db=dataset[dataset[[col]]==var, ]$buys_computer
  #  print(db)
    len=length(which(db==buys_computer))
  #  print(len)
    #print(dataset[dataset[[col]]==var, ])
    count=count+1
    res=res*len/divcount
  }
 # print(res)
  return (res)
} 

sampledb=dataset$buys_computer
countyes=length(which(sampledb=="yes"))
print(countyes)
print(countno)
countno=length(which(sampledb=="no"))
resyes=checkProbability(income="medium",student = "yes",credit_rating = "excellent",buys_computer="yes")
resno=checkProbability(income="medium",student = "yes",credit_rating = "excellent",buys_computer="no")
print((resyes*countyes)/length(sampledb))
print((resno*countno)/length(sampledb))
