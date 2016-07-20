getHeadings <- function(websource) {
  sapply(1:nrow(meta(websource)), function(x) {
    return(meta(websource[[x]])$heading)
  })
}
