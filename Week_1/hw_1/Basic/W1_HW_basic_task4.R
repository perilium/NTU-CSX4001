# 請寫一段程式碼，能判斷輸入之西元年分 year 是否為閏年
#閏年規則：
#1、逢4的倍數閏。
#2、逢100的倍數不閏。
#3、逢400的倍數閏。
#4、逢4000的倍數不閏。

year <- c(scan())
for(i in year){
  if (i%%4000==0) {
    print(paste(i,"非閏年。"))
  }
  else if (i%%400==0) {
    print(paste(i,"為閏年。"))
  }
  else if (i%%100==0) {
    print(paste(i,"非閏年。"))
  }
  else if (i%%4==0) {
    print(paste(i,"為閏年。"))
  }
  else {
    print(paste(i,"非閏年。"))
  }
}
