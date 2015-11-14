
price = 2
initialMoney = 6
nReBids = 2000

times = 1000
wins = 0

for (k in 1:times) {
  total = initialMoney
  
  for (t in 1:nReBids) {
    total = total - price
    if (total < 0) {
      break
    }
    w = 1
    for (i in 1:100) {
      s = sample(1:2, 1, repl = F)
      if (s == 1) {
        w = w * 2
      }else{
        break;
      }
      total = total + w
    }
  }
  
  if (total > initialMoney) {
    #print (total)
    wins = wins + 1
  }
}

print(wins / times)
