generator <- function(set, prob = rep(1/length(set), length(set))) {
  return (function(n) sample(set, n, replace = T))
}

roulette_values <- c("Zero!", 1:36)
fair_roulette <- generator(roulette_values)
rigged_roulette <- generator(c(roulette_values[1],roulette_values))
  