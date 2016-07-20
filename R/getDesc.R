getDesc <- function(websource) {
  sapply(1:nrow(tm::meta(websource)), function(x) {
    return(tm::meta(websource[[x]])$description)
  })
}
