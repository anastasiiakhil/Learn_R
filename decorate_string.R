decorate_string <- function (pattern, ...) { 
  return(paste0(pattern, paste(...), stringi::stri_reverse(pattern)))
}
