setwd("/Users/shrav/OneDrive/Documents/R")
csvgoodwithoutzeroes99 <- read.csv("~/R/csv files without zeros/csvgoodwithoutzeroes99.csv", header=FALSE)
View(csvgoodwithoutzeroes99)
csvseverewithoutzeroes99 <- read.csv("~/R/csv files without zeros/csvseverewithoutzeroes99.csv", header=FALSE)
View(csvseverewithoutzeroes99)

# Histogram of means in csvgoodwithoutzeroes99.
hist(colMeans(csvgoodwithoutzeroes99))
# Histogram of means in csvseverewithoutzeroes99.
hist(colMeans(csvseverewithoutzeroes99))