#' @export
double_me <- function(x) {2+x}

#' @export
#' @import dplyr
sample_letters <- function(x) {sample(letters, size = x, replace = T)}

#' @export
make_lorem_ipsum <- function(words_count) {
  sapply( 1:words_count,function(x) {
    sample(1:10, size=1) %>% sample_letters %>%
      paste(collapse ="")
  }) %>% paste(collapse = " ")
}
