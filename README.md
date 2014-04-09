pollutionmonitordata - programming assignment 1 coursera
========================================================

Write a function named 

* 'pollutantmean' 

that calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors. The function 'pollutantmean' takes three arguments: 

* 'directory', 
* 'pollutant', and 
* 'id' 

Given a vector monitor ID numbers, 'pollutantmean' reads that monitors particulate-matter-data from the directory specified in the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA. A prototype of the function is as follows: 

```{r}
pollutantmean <- function(directory, pollutant, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used

        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
}
```

Create the directory variable. 

```{r}
#Root directory of repo where csv files are stored
csv_repository<-"~/Downloads/pollutionmonitordata/specdata/"
setwd(csv_repository)

#Vector of filenames in the directory
filenames<-as.character(list.files())

#Concatenate root directory to each file
directory<-paste(csv_repository,filenames,sep="")

read.csv(directory[1])$sulfate

```

```{r}
source("pollutantmean.R")
pollutantmean("specdata", "sulfate", 1:10)
```
## [1] 4.064

```{r}
pollutantmean("specdata", "nitrate", 70:72)
```
## [1] 1.706

```{r}
pollutantmean("specdata", "nitrate", 23)
```