cleanup <- function(text) {
  text= gsub("[^[:print:]]", "", text)
  text = gsub("http[s]?://(?:[a-zA-Z]|[0-9]|[$-_@.&+]|[!*\\(\\),]|(?:%[0-9a-fA-F][0-9a-fA-F]))+", "", text)
  text = gsub("[^[:space:]]*…$", "", text)
  text = stripWhitespace(text)
  text = tolower(text)
  text = removeWords(text, words= stopwords("english"))
  text = removePunctuation(text)
  text = removeNumbers(text)
  return(text)
}
