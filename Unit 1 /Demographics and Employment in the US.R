CPS <- read.csv("CPSData.csv")
summary(CPS)
str(CPS)

#table function makes a table organizing the observations by state 
#sort sorts them from smallest to largest 

sort(table(CPS$State))
table(CPS$Citizenship)

(116639 + 7073)/131302

table(CPS$Race, CPS$Hispanic)

is.na(CPS$Married)

table(CPS$Region, is.na(CPS$Married))
table(CPS$Sex, is.na(CPS$Married))
table(CPS$Age, is.na(CPS$Married))
table(CPS$Citizenship, is.na(CPS$Married))
table(CPS$State, is.na(CPS$MetroAreaCode))

table(CPS$Region,is.na(CPS$MetroAreaCode))
table(CPS$State,is.na(CPS$MetroAreaCode))

tapply(is.na(CPS$MetroAreaCode),CPS$State,mean)
MetroAreaMap <-  read.csv("MetroAreaCodes.csv")
CountryMap <- read.csv("CountryCodes.csv")

str(MetroAreaMap)
str(CountryMap)

CPS = merge(CPS, MetroAreaMap, by.x="MetroAreaCode", by.y="Code", all.x=TRUE)

summary(CPS)
sort(table(CPS$MetroArea))

#to find the highest proportion of interviewees of Hispanic 
#ethnic

sort(tapply(CPS$Hispanic, CPS$MetroArea, mean))
sort(tapply(CPS$Race == "Asian", CPS$MetroArea, mean))

sort(tapply(CPS$Education == "No high school diploma", CPS$MetroArea, mean, na.rm = TRUE))

CPS = merge(CPS, CountryMap, by.x="CountryOfBirthCode", by.y="Code", all.x=TRUE)
summary(CPS)

sort(table(CPS$CountryOfBirthCode))
table(CPS$MetroArea == "New York-Northern New Jersey-Long Island, NY-NJ-PA", CPS$Country != "United States")

sort(tapply(CPS$Country == "India", CPS$MetroArea, sum, na.rm=TRUE))

sort(tapply(CPS$Country == "Brazil", CPS$MetroArea, sum, na.rm=TRUE))

sort(tapply(CPS$Country == "Somalia", CPS$MetroArea, sum, na.rm=TRUE))

sort(tapply(CPS$Country == "Singapore", CPS$MetroArea, sum, na.rm=TRUE))
