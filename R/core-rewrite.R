#' Interface for AST rewriting
#' @importFrom magrittr freduce
#' @param ast A language object.
#' @param rules A list of functions, each of which is the output from `make_rule`.
#' @return A language object.
#'
#' @examples
#' library(rockstaR)
#'
#' rule = make_rule("nothing", "NULL")
#' lyrics = "Rockstar is nothing"
#' rewrite(lyrics, list(rule))
#'
#' @export
#
# rewrite :: language -> [function] -> language
rewrite <- function(ast, rules) {
  magrittr::freduce(ast, rules)
}


#' Make a AST transformation rule
#'
#' @param from A character string.
#' @param to A character string.
#' @return A function that takes a language object and returns a language object.
#'
#' @examples
#' library(rockstaR)
#'
#' rule = make_rule("nothing", "NULL")
#' lyrics = "Rockstar is nothing"
#' rewrite(lyrics, list(rule))
#'
#' @export
#
# make_rule :: char -> char -> (language -> language)
make_rule <- function(from, to) {
  f <- function(x) subst(x, pattern = from, replacement = to)
  structure(f, class = "rule", from = from, to = to)  # facilitate custom print function
}

rm_attributes <- function(x) {
  attributes(x) <- NULL
  x
}

# Implement a custom print function so that rewriting functions explain themselves
#' Print function for 'rule' objects
#' @importFrom glue glue
#' @param x A 'rule' object.
#' @param ... (Unused) Optional arguments.
#'
#' @method print rule
#'
#' @export
print.rule <- function(x, ...) {
  from <- attr(x, 'from')
  to <- attr(x, 'to')
  print(glue::glue("Rule: Rewrite '{from}' to '{to}'."))
  print(rm_attributes(x))
  invisible(x)
}

#' @importFrom rlang is_character
#' @importFrom stringr str_replace_all
# Rewriting AST by substitution
# subst :: language -> char -> char -> language
subst <- function(ast, pattern, replacement) {
  if(is_character(ast)){
    return(str_replace_all(ast, pattern, replacement))
    }
    stop("The line should not be reached, please submit an issue with the input on GitHub. Thanks!")  # nocov
}
