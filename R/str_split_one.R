#' Split a string
#'
#' @param string A character vector with one element.
#' @param pattern What to split on.
#' @param n The maximum length of each element of the output.
#'
#' @return A character vector.
#' @export
#'
#' @examples
#' x <- "alfa,bravo,delta,charlie"
#' str_split_one(x, pattern=",")
str_split_one <- function(string, pattern, n = Inf) {
  stopifnot(is.character(string), length(string) <= 1)
  if (length(string) == 1) {
    stringr::str_split(string = string, pattern = pattern, n = n)[[1]]
  } else {
    character()
  }
}
