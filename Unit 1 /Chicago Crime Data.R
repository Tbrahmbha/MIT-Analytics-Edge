mvt <- read.csv("mvtWeek1.csv")
str(mvt)
summary(mvt)
max(mvt$ID)
min(mvt$Beat)
mvt$Date[2]

DateConvert = as.Date(strptime(mvt$Date, "%m/%d/%y %H:%M"))
summary(DateConvert)

mvt$Month = months(DateConvert)
mvt$Weekday = weekdays(DateConvert)

#Creates two new variables in the data frame, month and weekday, and sets them equal to 
# the month and weekday values that we can extract from the Date Object. 

mvt$Date = DateConvert

table(mvt$Month)

table(mvt$Weekday)
max(table(mvt$Weekday))

#Which month has the largest number of motor vehicle thefts for which an arrest was made
table(mvt$Arrest, mvt$Month)

#it is clear that the TRUE boxplot is skewed to the beggining of the time period
# this would mean more arrests were made at this time
boxplot(mvt$Date ~ mvt$Arrest)

table(mvt$Arrest, mvt$Year)

#Sorts the number of observations by how they fall into each of the locations
sort(table(mvt$LocationDescription))

#Creating a subset of data
Top5 = subset(mvt, LocationDescription=="STREET" | LocationDescription=="PARKING LOT/GARAGE(NON.RESID.)" | LocationDescription=="ALLEY" | LocationDescription=="GAS STATION" | LocationDescription=="DRIVEWAY - RESIDENTIAL")

summary(Top5)
str(Top5)

#refresh the factor variable to only focus on those locations within the top5
#table
Top5$LocationDescription = factor(Top5$LocationDescription)
table(Top5$LocationDescription, Top5$Arrest)

#the most vehicle thefts at a gas station happen on a saturday
table(Top5$LocationDescription, Top5$Weekday)

#the fewest vehicle thefts at a driveway happen on a Saturday
#which is the inverse of gas stations

