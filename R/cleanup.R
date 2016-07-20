cleanup <- function(text) {
  text= gsub("[^[:print:]]", "", text)
  text = gsub("http[s]?://(?:[a-zA-Z]|[0-9]|[$-_@.&+]|[!*\\(\\),]|(?:%[0-9a-fA-F][0-9a-fA-F]))+", "", text)
  text = gsub("[^[:space:]]*…$", "", text)
  text = tolower(text)
  text = tm::removeWords(text, words= tm::stopwords("english"))
  text = tm::removePunctuation(text)
  text = tm::removeNumbers(text)
  text = tm::stripWhitespace(text)
  return(text)
}

