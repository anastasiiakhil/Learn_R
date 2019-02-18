"%+%" <- function(x, y) {
  if (length(x) != length(y)){
    k = x+y
    k[(min(length(x),length(y))+1) : length(k)] <- NA
    return (k)
  } else {
    return (x+y)
  }
}

"%+%" <- function(x, y) {
  length(x) = length(y) = max(length(x), length(y))
  return(x+y)
}
