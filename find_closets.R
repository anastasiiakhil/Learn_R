find_closest <- function(v, n) {
  k <- rbind(v,n)
  r <- abs(k[1,]-k[2,])
  return (which(r==min(r)))
}
