library(datasets)
library(tidyverse)
library(dplyr)

#Define a function called 'calculate_radius' with two arguments: 'data' and 'column_name'
calculate_radius <- function(data, column_name) {
  # Check if the input data is a data frame
  if (!is.data.frame(data)) {
    print("Error: Input is not a data frame.")
    return(NULL)
  } else {
    return(data)
    # Check if the specified column is numeric
    if (is.numeric(data[[column_name]])) {
      # Calculate radius from specified column
      data$radius <- data[[column_name]] / (2 * pi)
      
      # Return the modified data frame
      return(data)
    } else {
      print("Error: Specified column is not numeric.")
      return(NULL)
    }
  }
}
