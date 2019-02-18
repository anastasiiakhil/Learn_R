simulate_walk <- function(zone = 6,p = 0.01){
  xx = 0
  yy = 0
  current_position <- sqrt((xx)^2 + (yy)^2)
  for (i in 1:100) {
    is_absorbed <- rbinom(1, 1, p)
    if (is_absorbed) return(list(status = "Absorbed", 
                                 position = current_position, 
                                 steps = i))
    xx = xx + rnorm(1)
    yy = yy + rnorm(1)
    current_position <- sqrt((xx)^2 + (yy)^2)
    if (current_position > zone) return(list(status = "not in circle",
                                              position = current_position,
                                              steps = i))
    }
  return(list(status = "Max steps reached",
              position = current_position,
              steps = 100))
}

result <- data.frame(
  status = sapply(result, function(x) x$status),
  position = sapply(result, function(x) x$position),
  steps = sapply(result, function(x) x$steps)
)

tapply(result$position, result$status, length)
tapply(result$steps, result$status, mean)
