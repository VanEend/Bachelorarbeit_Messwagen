#Create function to calculate parameters of input dataset
cubic_parameters <- function(half_meter, meter, two_meter, three_meter){
  #Note: ax^3 + bx^2 + cx + d
  
  a <- (- 8/15) * half_meter + meter - 2/3 * two_meter + 1/5 * three_meter #Parameter a
  b <- 16/5 * half_meter - 11/2 * meter + 3 * two_meter - 7/10 * three_meter #Parameter b
  c <- (-88/15) * half_meter + 17/2 * meter - 10/3 * two_meter + 7/10 * three_meter #Parameter c
  d <- 16/5 * half_meter - 3 * meter + two_meter - 1/5 * three_meter #Parameter d
  
  #Store each value into dataframe for easy access
  output <- data.frame(a, b, c, d)
  return(output) #Return dataframe
}