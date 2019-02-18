# import data
avian <- read.csv("C:/Users/Анастасия/Desktop/Learn_R/avianHabitat.csv")

# cheaking data
str(avian)
head(avian)
summary(avian)

any(!complete.cases(avian))
check_percent_range <- function(x){
  any(x < 0 | x > 100)
}
check_percent_range(avian$PW)

# transforming variables 
names(avian)
coverage_var <- names(avian[-(1:4)][c(T,F)])
avian$total_cover <- rowSums(avian[,coverage_var])
summary(avian$total_cover)

#task_1

avian_new <- read.csv("C:/Users/Анастасия/Desktop/Learn_R/avianHabitat2.csv", skip = 5, sep = ';', 
                   comment.char = '%', na.strings = "Don't remember")
coverage_var_new <- names(avian_new[-(1:3)][c(T,F)])
avian_new$total_cover <- rowSums(avian_new[,coverage_var_new])
summary(c(avian$total_cover, avian_new$total_cover))

#task_2

my_var <- sort(sapply(avian[names(avian)[-(1:5)][c(T, F)]], max), 
                     decreasing = TRUE)[-3]
