#' Mapping Rockstar operators into R operators
#'
#' @name rockstar-to-r-rules
#' @export
default_rules <- function() {
    list(
        make_rule("mysterious", "rs.NA"),
        make_rule("nothing", "rs.NULL"),
        make_rule("nowhere", "rs.NULL"),
        make_rule("nobody", "rs.NULL"),
        make_rule("empty", "rs.NULL"),
        make_rule("gone", "rs.NULL"),
        make_rule("right", "rs.TRUE"),
        make_rule("ok", "rs.TRUE"),
        make_rule("yes", "rs.TRUE"),
        make_rule("wrong", "rs.FALSE"),
        make_rule("lies", "rs.FALSE"),
        make_rule("no", "rs.FALSE")
    )
}
