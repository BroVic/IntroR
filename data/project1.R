# r-practice.R

# Check where you are
getwd()

# Move to the correct folder (if necessary)
setwd('~/Documents/r-practice/')
getwd()

list.files()

unzip('black-friday.zip')

dat <- read.csv('BlackFriday.csv')
ls()

str(dat)

# Reveal search path
search()

# Do some data wrangling
library(dplyr)

# review search path
search()

colnames(dat)

dat <- dat %>% 
  select(Gender, Age, Stay_In_Current_City_Years)
dat
head(dat)
str(dat)

colnames(dat)[3] <- 'stay'
colnames(dat)

table1 <- table(dat$Gender, dat$Age)
barplot(
  table1,
  beside = TRUE,
  legend = T,
  main = 'Age vs. Gender',
  xlab = 'Age Group',
  ylab = 'No. of customers',
  col = c('pink', 'blue'),
  ylim = c(0, 200000)
)

chisq.test(dat$Age, dat$Gender)
