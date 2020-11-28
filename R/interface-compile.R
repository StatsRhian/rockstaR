#' Compile Rockstar code into R code
#' @importFrom purrr map
#'
#' @param x A character string; the expression to transpile to R.
#' @param rules A list of rewriting rules. See [make_rule] for more detail.
#' @return A character string.
#'
#' @export
transpile <- function(x, rules = default_rules()){
  x %>%
    parse_rockstar() %>%
    cat(file = "lyrics.R", sep = "\n")

  file.show("lyrics.R")
}
