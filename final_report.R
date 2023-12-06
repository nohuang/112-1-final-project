library(readr)
Tax<- read_csv("https://raw.githubusercontent.com/Urifoz/112-1-final-project/main/111%E5%B9%B41-12%E6%9C%88%E5%A8%9B%E6%A8%82%E7%A8%85%E7%A8%85%E6%BA%90%E6%9C%88%E5%A0%B1%E8%A1%A8UTF-8.csv")
View(Tax)

Tax$...1


result <- grep("月合計", Tax$...1)
print(result)
print(Tax$營業總額[result])
