poll <- read.csv("AnonymityPoll.csv")
str(poll)
sort(table(poll$Smartphone))
table(is.na(poll$Smartphone))
table(poll$Sex, poll$Region)
table(poll$State, poll$Region)
SouthInterviewees = subset(poll, Region== "South")
sort(table(SouthInterviewees$State))
table(poll$Internet.Use, poll$Smartphone)
table(is.na(poll$Internet.Use))
table(is.na(poll$Smartphone))

limited = subset(poll, Internet.Use == 1 | Smartphone == 1)
str(limited)
summary(limited)
table(limited$Info.On.Internet)
table(limited$Worry.About.Info)
table(limited$Anonymity.Possible)
summary(limited$Anonymity.Possible)
summary(limited$Tried.Masking.Identity)
summary(limited$Privacy.Laws.Effective)

hist(limited$Age)
#to find the largest occurence in the table
max(table(limited$Age,limited$Info.On.Internet))

#jitter command functionality check 
jitter(c(1,2,3))
#randomly adds or subtracts a small value to each of the number arguments
#passed through it 

plot(jitter(limited$Age), jitter(limited$Info.On.Internet))
tapply(limited$Info.On.Internet, limited$Smartphone, summary)
tapply(limited$Tried.Masking.Identity, limited$Smartphone, summary)
