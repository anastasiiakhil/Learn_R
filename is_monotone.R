is_monotone <- function(x){
  k <- x[-1] - x[-length(x)]
  if (all(k >= 0) | all(k <= 0)){
    return (TRUE)
  } else {
    return (FALSE)
  }
}
