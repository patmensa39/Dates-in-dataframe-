### DATES IN DATAFRAMES ###
library(tidyverse)
nums<- read.table("sortdata.txt", header = TRUE)
View(nums)
attach(nums)
head(nums)

#The idea is to order the rows by date. The ordering is to be applied to all four columns of the dataframe. 
#Note that ordering on the basis of our variable called date does not work in the way we want it to:

newnums<- nums[order(date), ]
View(newnums)

is.character(nums$date)

dates <- strptime(date, format = "%d/%m/%y")
dates

nums<- cbind(nums, dates)
View(nums)

nums <- nums %>% select(name, response, treatment, dates)
view(nums)

newnums_2<- nums[order(dates), ]
view(newnums_2)
