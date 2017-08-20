USDA$Sodium[1] > mean(USDA$Sodium, na.rm=TRUE)
USDA$Sodium[50] > mean(USDA$Sodium, na.rm=TRUE)
HighSodium = USDA$Sodium > mean(USDA$Sodium, na.rm=TRUE)
str(HighSodium)
HighSodium = as.numeric(USDA$Sodium > mean(USDA$Sodium, na.rm=TRUE)
str(HighSodium) 
USDA$HighSodium = as.numeric(USDA$Sodium > mean(USDA$Sodium, na.rn=TRUE))
str(USDA)
USDA$HighProtein = as.numeric(USDA$Protein > mean(USDA$Protein, na.rm=TRUE))
USDA$HighFat = as.numeric(USDA$TotalFat > mean(USDA$TotalFat, na.rm =TRUE))
USDA$HighCarb = as.numeric(USDA$Carbohydrate > mean(USDA$Carbohydrate, na.rm=TRUE))
str(USDA)

table(USDA$HighSodium, USDA$HighFat)


tapply(USDA$Iron, USDA$HighProtein, mean, na.rm=TRUE)


tapply(USDA$VitaminC, USDA$HighCarb, max, na.rm=TRUE)
tapply(USDA$VitaminC, USDA$HighCarb, summary, na.rm=TRUE)
# The above tables show that Vitamin C has a positive correlation with carb content
# meaning that within the USDA food database as carb content increases so does Vitamin C most of the time
