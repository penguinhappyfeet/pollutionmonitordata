# First Line
# setwd("~/Downloads/pollutionmonitordata/")

pollutantmean <- function (
        directory = "~/Downloads/pollutionmonitordata/specdata/", 
        pollutant = "pollutant", 
        id = 101) {
        
        setwd(directory)
        
        filenames<-as.character( list.files() )
        directory<-paste( directory, filenames, sep="" )
        
        files <- read.csv(directory[id])
        
        return( head(files) )
}


