# ex1.R

## Check your working directory and navigate to a different one of your choice
####  WRITE YOUR CODE HERE  ####
getwd()
setwd("")


## We are going to download a gzip file from the US National Centers for Environmental Information
## 'https://www1.ncdc.noaa.gov/pub/data/nsrdb-solar/SUNY-gridded-data/12442/SUNY_122054205.csv.gz'
## Task: Create a character vector of length 1 with the above link and give it the name 'uri'.
####  WRITE YOUR CODE HERE  ####

## There is a function called 'download.file'. Quickly type 'args(download.file)' to see its parameters.
## Next open the documentation page for this function. Hint: Focus on 'Usage' and 'Examples' for a start.
####  WRITE YOUR CODE HERE  ####


## Having read the documentation download the file and save it as 'sunny.csv.gz'.
####  WRITE YOUR CODE HERE  ####


## Run these lines of code to open the data file.
## gzfile() will create a connection of the decompressed file.
## read.table() will read the CSV file.
## close() is to close the connection so that the file is not corrupted.
con <- gzfile('sunny.csv.gz', open = 'r')
dat <- read.table(con, header = TRUE, sep = ',')
close(con)

## You data are now in the an object named 'dat'.
## Write some code to view and/or explore the data
####  WRITE YOUR CODE HERE  ####

## Draw a composite pairwise scatterplot of your data.
## Note: Be patient, as this may take longer than expected!
png(file = 'sunnyplot.png')
####  WRITE YOUR CODE HERE  ####
dev.off()

## Save the data in this directory in a serialised data format
saveRDS(dat, 'sunnydata.rds')

## Quit R
q('no')
