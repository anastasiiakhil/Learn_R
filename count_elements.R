count_elements <- function(x) {
  k <- table(sort(x))
  return (rbind(as.numeric(dimnames(k)[[1]]), as.numeric(table(sort(x)))))
}


count_elements <- function(x){
  sapply(sort(unique(x)), function (n) c(n, sum(x == n)))
} 
