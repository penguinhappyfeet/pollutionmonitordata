# First Line
setwd("~/Downloads/pollutionmonitordata/")
source("complete.R")
directory = "specdata"
threshold = 400
#initialize file directory
root <- "~/Downloads/pollutionmonitordata/"
directory <- paste( root, directory, "/", sep="" )
setwd( directory )
#UNIX pathname to all files
filenames <- as.character( list.files() )
filepaths <- paste( directory, filenames, sep="" )
#initialize complete cases
filecount <- length( list.files() )
cases <- complete("specdata", id = 1:filecount)

valid <- cases[,3]>=threshold
cases[,3][valid]

