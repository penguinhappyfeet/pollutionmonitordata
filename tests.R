# First Line

id = 1:10
pollutant = "sulfate"
directory = "~/Downloads/pollutionmonitordata/specdata/"
setwd("~/Downloads/pollutionmonitordata/specdata/")

filemeans <- c()
filenames <- as.character( list.files() )
filepaths <- paste( directory, filenames, sep="" )

for(i in id) {
        loadfile <- read.csv( filepaths[i] )
        result <- loadfile[,pollutant]
        valid <- result[ !is.na( result ) ]
        filemeans <- c(filemeans, valid )
}


loadfile
result
valid
mean(filemeans)
