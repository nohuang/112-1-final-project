library(readr)
Tax<- read_csv("https://www.kltb.gov.tw/wSite/public/Attachment/010/f1701157697347.csv")
View(Tax)

source("https://www.kltb.gov.tw/wSite/public/Attachment/010/f1701157697347.csv")

# POST: get token ----
cred_file = "tdx_credentials.json"
access_token <- get_token(cred_file = cred_file)