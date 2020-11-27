library(stringr)

line = r"(Say "Rhian")"
gsub("(?:Say|Shout|Whisper|Scream) (.*)", "print(\\1)", line)

# Recognise capitalised
line = "Tommy is a rockstar"
str_extract(line, "[A-Z]\\w*")

# Recognise multiple capitalised
line = "David Bowie is lovely"
str_extract_all(line, "[A-Z][a-z]+(?=\\s[A-Z])(?:\\s[A-Z][a-z]+)+")

poetic_number_keywords = c("is", "was", "were")
# Rule poetic_number_literal
# Tommy was a rockstar
# tommy = 18

convert_poetic_number("a rockstar")

