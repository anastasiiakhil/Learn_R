library(stringr)

hamlet <- "To be, or not to be: that is the question:
Whether 'tis nobler in the mind to suffer
The slings and arrows of outrageous fortune,
Or to take arms against a sea of troubles,
And by opposing end them?"

hamlet <- str_replace_all(hamlet, "[:punct:]", "")
hamlet <- tolower(unlist(str_split(hamlet, "[:space:]")))

c(length(grep("to", hamlet)),
  length(grep("[fqw]", hamlet)),
  length(grep("b.", hamlet)),
  length(grep("\\b[[:alpha:]]{7}\\b", hamlet)))
