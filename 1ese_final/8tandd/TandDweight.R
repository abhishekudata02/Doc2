data = read.csv(file = "/home/it/lab ise 66/TandD.csv", sep = ",")
tvCnt = data$tv
print(tvCnt)
pcCnt = data$pc
print(pcCnt)

totTv = 0
for(i in tvCnt)
{
  totTv = totTv + i
}
print(totTv)

totPc = 0
for(i in pcCnt)
{
  totPc = totPc + i
}
print(totPc)

print("for d")
print("for tv europe:")
print((tvCnt[1] / totTv) * 100)
print("for tv asia:")
print((tvCnt[2] / totTv) * 100)
print("for tv total:")  
print((totTv / totTv) * 100)


print("for d")
print("for pc europe:")
print((pcCnt[1] / totPc) * 100)
print("for pc asia:")
print((pcCnt[2] / totPc) * 100)
print("for pc total:")  
print((totPc / totPc) * 100)

cntEu = tvCnt[1] + pcCnt[1]
print(cntEu)
cntAs = tvCnt[2] + pcCnt[2]
print(cntAs)

print("for t")
print("for tv europe:")
print((tvCnt[1] / cntEu) * 100)
print("for pc europe:")
print((pcCnt[1] / cntEu) * 100)
print("for total europe:")  
print((cntEu / cntEu) * 100)

print("for t")
print("for tv asia:")
print((tvCnt[2] / cntAs) * 100)
print("for pc asia:")
print((pcCnt[2] / cntAs) * 100)
print("for total asia:")  
print((cntAs / cntAs) * 100)


