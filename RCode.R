# First Line
setwd("~/Downloads/pollutionmonitordata/")

pollutantmean <- function (
        directory = "specdata", 
        pollutant = "sulfate", 
        id = 101) {

        root <- "~/Downloads/pollutionmonitordata/"
        directory <- paste( root, directory, "/", sep="" )
        setwd( directory )
        filenames <- as.character( list.files() )
        #print( head(filenames) )
        #print 
        
        filepaths <- paste( directory, filenames, sep="" )
        #print( head(filepaths) )
        #print( filepaths[1] )
        
        loadfile <- c( read.csv( filepaths[ id ] ) )
        #print( filepaths[ filenames[1] ] )
        
        result <- loadfile[,pollutant]
        
        valid <- result[ !is.na( result ) ]
        
        return( mean( valid ) )
}

a <- pollutantmean( pollutant = "sulfate", id = 1 )
a
