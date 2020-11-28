#' Mapping Rockstar operators into R operators
#'
#' @name rockstar-to-r-rules
#' @export
default_rules <- function() {
    list(
        # NULL & NA
        make_rule("mysterious", "rs.NA"),
        make_rule("nothing", "rs.NULL"),
        make_rule("nowhere", "rs.NULL"),
        make_rule("nobody", "rs.NULL"),
        make_rule("empty", "rs.NULL"),
        make_rule("gone", "rs.NULL"),

        # Booleans
        make_rule("right", "rs.TRUE"),
        make_rule("ok", "rs.TRUE"),
        make_rule("yes", "rs.TRUE"),
        make_rule("wrong", "rs.FALSE"),
        make_rule("lies", "rs.FALSE"),
        make_rule("no", "rs.FALSE"),

        # Printing
        make_rule("Say", "rs.PRINT"),
        make_rule("Shout", "rs.PRINT"),
        make_rule("Whisper", "rs.PRINT"),

        # Comments
        make_rule("\\(", "rs.COMMENT.S"),
        make_rule("\\)", "rs.COMMENT.E"),

        # Pronouns
        make_rule("\\bit\\b", "rs.PRONOUN"),
        make_rule("\\bhe\\b", "rs.PRONOUN"),
        make_rule("\\bshe\\b", "rs.PRONOUN"),
        make_rule("\\bhim\\b", "rs.PRONOUN"),
        make_rule("\\bher\\b", "rs.PRONOUN"),
        make_rule("\\bthey\\b", "rs.PRONOUN"),
        make_rule("\\bthem\\b", "rs.PRONOUN"),
        make_rule("\\bze\\b", "rs.PRONOUN"),
        make_rule("\\bhir\\b", "rs.PRONOUN"),
        make_rule("\\bzie\\b", "rs.PRONOUN"),
        make_rule("\\bzir\\b", "rs.PRONOUN"),
        make_rule("\\bxe\\b", "rs.PRONOUN"),
        make_rule("\\bxem\\b", "rs.PRONOUN"),
        make_rule("ve", "rs.PRONOUN"),
        make_rule("ver", "rs.PRONOUN"),

        # Assignment
        make_rule("(.*) is (.*)", "rs.ASSIGN \\1 rs.TO \\2"),
        make_rule("(.*) are (.*)", "rs.ASSIGN \\1 rs.TO \\2"),
        make_rule("(.*) was (.*)", "rs.ASSIGN \\1 rs.TO \\2"),
        make_rule("(.*) were (.*)", "rs.ASSIGN \\1 rs.TO \\2"),
        make_rule("Let (.*) be (.*)",  "rs.ASSIGN \\1 rs.TO \\2"),
        make_rule("Put (.*) into (.*)",  "rs.ASSIGN \\2 rs.TO \\1")

    )
}
