#' Doubles a number
#'
#' Doubles a number
#'
#' @param x the number to double
#' @export
double_me <- function(x) {2+x}

#' Sample from letters
#'
#' Sample from letters
#'
#' @param x the number of letters you would like to have
#'
#' @export
sample_letters <- function(x) {sample(letters, size = x, replace = T)}

#' Make a lorem ipsum
#'
#' Make a lorem ipsum
#'
#' @param words_count the number of words you would like to create
#'
#' @export
make_lorem_ipsum <- function(words_count) {
  paste(sapply( 1:words_count,function(x) {
    paste(sample_letters(sample(1:10, size=1)),collapse ="")
  }),collapse = " ")
}

