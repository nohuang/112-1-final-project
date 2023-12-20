library(readr)
dg6 <- readr::read_csv("https://data.cip.gov.tw/API/v1/dump/datastore/A53000000A-112010-003")
View(dg6)

dg6 |>
  dplyr::filter(
    類別 == "性別"
  ) -> dg6_1

dg6_1 |>
  split(
    dg6_1$項目別
  ) -> split_dg6_1

split_dg6_1$女$看報紙/
  split_dg6_1$男$看報紙 -> summarise1

names(summarise1) <- 
  split_dg6_1$女$年度

summarise1


dg6 |>
  dplyr::filter(
    類別 == "年齡"
  ) -> dg6_2

View(dg6_2)

dg6_2 |>
  split(
    dg6_2$項目別
  ) -> split_dg6_2

split_dg6_2$"15 ~ 19歲"$看報紙/
  split_dg6_2$"65歲及以上"$看報紙 -> summarise2

names(summarise2) <- 
  split_dg6_2$"15 ~ 19歲"$年度

summarise2

#pie chart
dg6 |>
  dplyr::select(
    3:21
  ) |>
  dplyr::filter(
    項目別=="-"
  ) -> dg6_filtered_3

View(dg6_filtered_3)

x <- as.numeric(dg6_filtered_3[1, ][4:19])
labels <- c(colnames(dg6_filtered_3[1, ][4:19]))

# Give the chart file a name.
png(file = "103.jpg")

# Plot the chart.
pie(x,labels)

# Save the file.
dev.off()
