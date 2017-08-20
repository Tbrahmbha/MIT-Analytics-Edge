#This script contains analysis for the WHO Data Set 

table(WHO$Region)
tapply(WHO$Over60, WHO$Region, mean)
