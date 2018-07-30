# ex1.R

## Check your working directory and navigate to a different one of your choice
getwd()
#setwd('~/dir/of/choice')


## Download a gzip file from the US National Centers for Environmental Information
## 'https://www1.ncdc.noaa.gov/pub/data/nsrdb-solar/SUNY-gridded-data/12442/SUNY_122054205.csv.gz'
## Create a character vector of length 1 with the above link and give it the name 'uri'.
uri <- 'https://www1.ncdc.noaa.gov/pub/data/nsrdb-solar/SUNY-gridded-data/12442/SUNY_122054205.csv.gz'

## There is a function called 'download.file'. Quickly type args(download.file) to see its parameters.
## Next open the documentation page for this function. Hint: Focus on 'Usage' and 'Examples' for a start.
?download.file
# or help('download.file')

## Having read the documentation download the file.
dfile <- 'sunny.csv.gz'
if (!file.exists(dfile)) {
  if (download.file(uri, dfile))
    stop('Could not download the file')
}

## Run these lines of code to open the data file
## gzfile() will create a connection of the decompressed file
## read.table() will read the CSV file
## close() is to close connection so that the file is not corrupted.
con <- gzfile('sunny.csv.gz', open = 'r')
dat <- read.table(con, header = TRUE, sep = ',')
close(con)

## You data are now in the an object named 'dat'
## Write some code to view and/or explore the data
View(dat)
str(dat)
summary(dat)
## etc.

## Draw a composite pairwise scatterplot of your data
## Note: Be patient, as this may take longer than expected!
png(file = 'sunnyplot.png')
pairs(dat)
dev.off()

## Save the data in this directory in a serialised data format
## Hint: Use the function 'saveRDS' - find out from the documentation how to use it.
saveRDS(dat, 'sunnydata.rds')

## Quit R
q('no')
