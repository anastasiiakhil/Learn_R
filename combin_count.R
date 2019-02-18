combin_count <- function(n, k, with_repretitions = FALSE) {
  if (with_repretitions == TRUE){
    return (factorial(n+k-1)/(factorial(k)*factorial(n-1)))
  } else {
    return (factorial(n)/(factorial(k)*factorial(n-k)))
  }
}
