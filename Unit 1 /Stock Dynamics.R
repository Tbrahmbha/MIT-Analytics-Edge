getwd()
setwd("/Users/Brahmbha/Google Drive/P/Programming/The Analytics Edge (EDx)/Unit 1")
Boeing <- read.csv(file="BoeingStock.csv", header =TRUE, sep = "," )
IBM <- read.csv(file="IBMStock.csv", header =TRUE, sep = "," )
GE <- read.csv(file="GEStock.csv", header =TRUE, sep = "," )
Procter <- read.csv(file="ProcterGambleStock.csv", header =TRUE, sep = "," )
Cocacola <- read.csv(file="CocaColaStock.csv", header =TRUE, sep = "," )
str(IBM)

#convert the dates column into a date object 

IBM$Date = as.Date(IBM$Date, "%m/%d/%y")
GE$Date = as.Date(GE$Date, "%m/%d/%y")
Cocacola$Date = as.Date(Cocacola$Date, "%m/%d/%y")
Procter$Date = as.Date(Procter$Date, "%m/%d/%y")
Boeing$Date = as.Date(Boeing$Date, "%m/%d/%y")

str(IBM)
str(GE)
str(Cocacola)
str(Procter)
str(Boeing)

summary(IBM)
summary(GE)
summary(Cocacola)
summary(Boeing)
summary(Procter)

sd(Procter$StockPrice)

plot(Cocacola$Date, Cocacola$StockPrice, type = "l", col="red")
lines(Procter$Date, Procter$StockPrice, col="blue")
abline(v=as.Date(c("2000-03-01")),lwd=2)
abline(v=as.Date(c("1983-03-01")),lwd=2)

plot(Cocacola$Date[301:432], Cocacola$StockPrice[301:432], type="l", col="red", ylim=c(0,210))
lines(Procter$Date[301:432], Procter$StockPrice[301:432], col= "green")
lines(IBM$Date[301:432], IBM$StockPrice[301:432], col= "purple")
lines(GE$Date[301:432], GE$Date[301:432], col= "orange")
lines(Boeing$Date[301:432], Boeing$Date[301:432], col = "blue")
abline(v=as.Date(c("1997-09-01")),lwd=2)
abline(v=as.Date(c("1997-11-01")),lwd=2)
abline(v=as.Date(c("2004-03-01")),lwd=2)
abline(v=as.Date(c("2005-03-01")),lwd=2)

tapply(IBM$StockPrice, months(IBM$Date), mean)
#tapply(summary variable, Group variable, Function)
# is useful when we need to break up a vector 
# into groups defined by some classifying factor
# compute a function on the subsets, and return
# the results in a convenient form 
# You can even specify multiple factors as
# grouping variable, for example treatment 
# and sex, or team and handedness 

tapply(GE$StockPrice, months(GE$Date), mean)
tapply(Cocacola$StockPrice, months(Cocacola$Date), mean)




