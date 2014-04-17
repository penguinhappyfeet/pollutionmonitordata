# First Line
setwd("~/Downloads/pollutionmonitordata/")
pollutantmean <- function (
        directory = "specdata", 
        pollutant = "sulfate", 
        id = 101) {
        #initialize variable to hold data from pollutant column
        filemeans <- c()
        #initialize file directory
        root <- "~/Downloads/pollutionmonitordata/"
        directory <- paste( root, directory, "/", sep="" )
        setwd( directory )
        #UNIX pathname to all files
        filenames <- as.character( list.files() )
        filepaths <- paste( directory, filenames, sep="" )
        #iterate through files and store data in filemeans
        for(i in id) {
                loadfile <- read.csv( filepaths[i] )
                result <- loadfile[,pollutant]
                valid <- result[ !is.na( result ) ]
                filemeans <- c(filemeans, valid )
        }
        return( mean( filemeans ) )
}

pollutantmean("specdata", "sulfate", 1:10)
## [1] 4.064
pollutantmean("specdata", "nitrate", 70:72)
## [1] 1.706
pollutantmean("specdata", "nitrate", 23)
## [1] 1.281

