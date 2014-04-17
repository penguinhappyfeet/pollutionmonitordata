# First Line
setwd("~/Downloads/pollutionmonitordata/")

pollutantmean <- function (
        directory = "~/Downloads/pollutionmonitordata/specdata/", 
        pollutant = "sulfate", 
        id = 101) {

        setwd(directory)
        filenames<-as.character( list.files() )
        directory<-paste( directory, filenames, sep="" )
        
        loadfile <- read.csv( directory[id] )
        
        result <- loadfile[,pollutant]
        
        valid <- result[ !is.na( result ) ]
        
        return( mean( valid ) )
}

a <- pollutantmean( pollutant = "sulfate", id = 101 )
a
