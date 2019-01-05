# leading_causes.R

# Quick exercise on importing, exploring and visualising data in R

## PLEASE READ THE INSTRUCTIONS FOR EACH TASK CAREFULLY

## Run the next line to check your working directory
getwd()

## Task: Navigate to a different one of your choice and if you want
## to create a new one use the function 'dir.create()'
## (Note: Replace the current function argument with one of your own)
setwd(".")


## We are going to download a csv file with Leading Causes of Mortality in the US
## https://data.cdc.gov/api/views/bi63-dtpu/rows.csv?accessType=DOWNLOAD.
## Task: Create a character vector of length 1 with the above link and
## give it the name 'uri'.
####  START WRITING YOUR CODE HERE  ####
uri <- 'https://data.cdc.gov/api/views/bi63-dtpu/rows.csv?accessType=DOWNLOAD'

## There is a function called 'download.file()'.
## Quickly type args(download.file) to see its parameters.
## Task: Write code to open the documentation page for this function
## (Hint: Focus on 'Usage' and 'Examples' for a start).
####  START WRITING YOUR CODE HERE  ####
?download.file

## Task: Download the file and save it as 'us-leading-causes.csv'.
## You are going to use this file name more than once so you might as well
## create a variable. So, before downloading it create an object that
## contains this name for reuse.
## (Hint: The new file name is one of the function arguments)
####  START WRITING YOUR CODE HERE  ####
dataFile <- 'us-leading-causes.csv'

## Use the function 'read.csv()' to read the file into R and save
## it to an object names 'dat'.
## Set the parameter 'stringsAsFactors' to FALSE.
####  START WRITING YOUR CODE HERE  ####
dat <- read.csv(dataFile, stringsAsFactors = FALSE)

## You data are now in an object named 'dat'.
## Task: Write some code to view and/or explore the data
####  START WRITING YOUR CODE HERE  ####
str(dat)
dim(dat)
head(dat)
summary(dat)

## We will d raw a scatterplot of some of your data.
## You will identify the 2 numerical variables and make a scatter plot with them.
## First, prepare a PNG file to save the plot as an image.
plotPic <- 'causes.png'
png(file = plotPic)

## Task: Draw your graph. You may visit ?plot(). Make sure you add a title
## and axis labels to make it meaningful. And colour the points blue.
####  START WRITING YOUR CODE HERE  ####
plot(
  dat$Deaths,
  dat$Age.adjusted.Death.Rate,
  main = "Deaths vs Death Rate",
  col = 'blue',
  xlab = "Deaths",
  ylab = "Age Adjusted Death Rate"
)

# This line will run of the graphics device and properly close
# the new PNG file we created
dev.off()

## Task: Use the function 'file.show()' to open the picture you just created.
## Feel free to consult the documentation
####  START WRITING YOUR CODE HERE  ####
file.show(plotPic)

## Run this line to save the data object in a
## serialised data format for reuse later
saveRDS(dat, 'leading_causes.rds')

## Task: Clear the workspace and then check to make sure it's empty
####  START WRITING YOUR CODE HERE  ####
rm(list = ls())
ls()

## END.
