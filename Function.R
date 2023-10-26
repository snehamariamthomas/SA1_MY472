library(datasets)
library(tidyverse)
library(dplyr)

#Function checks if input is data frame
data_structure_check <- function(data) {
  # Check if the input data is a data frame
  if (!is.data.frame(data)) {
    print("Error: Input is not a data frame.")
  } else {
    return(data)
  }
}

#Calling Function on Orange dataset
data_structure_check(Orange)