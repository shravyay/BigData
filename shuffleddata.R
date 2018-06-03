setwd("/Users/shrav/OneDrive/Documents/R")
csvgoodwithoutzeroes99 <- read.csv("~/R/csv files without zeros/csvgoodwithoutzeroes99.csv", header=FALSE)
View(csvgoodwithoutzeroes99)
csvseverewithoutzeroes99 <- read.csv("~/R/csv files without zeros/csvseverewithoutzeroes99.csv", header=FALSE)
View(csvseverewithoutzeroes99)
csvgoodwithoutzeroes99$label=0
write.csv(csvgoodwithoutzeroes99, "labelcsvgoodwithoutzeroes99.csv")
csvseverewithoutzeroes99$label=1
write.csv(csvseverewithoutzeroes99, "labelcsvseverewithoutzeroes99.csv")
merged_data99<- rbind(csvgoodwithoutzeroes99, csvseverewithoutzeroes99)
write.csv(merged_data99, "mergeddata99.csv")
for(i in 1:112241) 
  merged_data99[ i ,65]<???0
for (i in 112242:170996) 
  merged_data99[ i ,65]<???1
shuffledmerged_data99<- merged_data99[sample(nrow(merged_data99)),]
write.csv(shuffledmerged_data99, "shuffledmergeddata99.csv")
file_size <- floor(0.8 * nrow(shuffledmerged_data99))
trainrand <- sample(seq_len(nrow(shuffledmerged_data99)), size = file_size)
train <- shuffledmerged_data99[trainrand, ]
test <- shuffledmerged_data99[-trainrand, ]
write.csv(train,file = "Train80_99.csv")
