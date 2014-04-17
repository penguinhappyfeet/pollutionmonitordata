# First Line

directory = "~/Downloads/pollutionmonitordata/specdata/"
id <- c(1:3)
complete <- c()
filenames <- as.character( list.files() )
filepaths <- paste( directory, filenames, sep="" )
filelist <- filepaths[ id ]

for(i in id) {
        loadfile <- read.csv( filepaths[i] )
        sulfate <- loadfile$sulfate
        nitrate <- loadfile$nitrate
        valid <- sum( complete.cases(sulfate, nitrate) )
        complete <- c(complete, valid)
}

a <- cbind( 
        c( 1:length( filelist ) ), 
        id, 
        complete 
)

a
