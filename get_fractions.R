get_fractions <- function(m, n) {
  i <- 0:m
  j <- 0:n
  u <- i/m
  v <- j/n
  k <- unique(sort(c(u, v)))
  return (rev(k))
}
