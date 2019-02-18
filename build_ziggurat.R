build_ziggurat <- function(n) {
  if (n == 1){
    m5 <- matrix(1, ncol = n)
    return (matrix(as.integer(m5), nrow = n*2-1, ncol = n*2-1))
  } else {
    m <- matrix(0, nrow = n, ncol = n)
    m[n,n] <- n
    for (i in n:1){
      m[i,] <- i; m[,i] <- i
    }
    
    m1 <- matrix(0, nrow = n, ncol = n)
    m2 <- matrix(0, nrow = n, ncol = n)
    m3 <- matrix(0, nrow = n, ncol = n)
    
    for (i in 1:n){
      m1[i,] <- m[,n+1-i]
      m2[,i] <- m[,n+1-i]
    }
    for (i in 1:n){
      m3[,i] <- m2[n+1-i,]
    }
    m4 <- cbind(rbind(m,m1),rbind(m2,m3))[-n,-n]
    return(matrix(as.integer(m4), nrow = n*2-1, ncol = n*2-1))
  }
}


build_ziggurat <- function(n) {
  d <- n * 2 - 1
  outer(1:d, 1:d, function(x,y) {
    x <- n - abs(n - x)
    y <- n - abs(n - y)
    pmin(x,y)
  })
}


build_ziggurat <- function(n) {
  size <- n *2-1
  temp <- matrix(NaN, size, size)
  pmin(n-abs(n - row(temp)), n-abs(n-col(temp)))
}
