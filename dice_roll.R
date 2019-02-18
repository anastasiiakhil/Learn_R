dice_roll <- function(n) {
  x <- runif(n)
  return(ifelse(x > 5/6, '1',
                ifelse(x > 4/6, '2',
                       ifelse(x > 3/6, '3',
                              ifelse(x > 2/6, '4',
                                     ifelse(x > 1/6, '5', '6'))))))
}

dice_roll <- function(n) {
  x <- ceiling(runif(n, min = 0, max = 6))
  return(x)
}

dice_roll <- function(n) {
  x <- sample(1:6, n, replace=T)
  return(x)
}
