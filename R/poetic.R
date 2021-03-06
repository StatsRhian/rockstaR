#' Poetic number string
#' @importFrom stringr str_detect str_split str_extract str_length
#' @param line The line to be parsed
#' @export
convert_poetic_number = function(line){
  split = str_extract(line, ".*") # or \\n
  #split = str_remove_all(line, ";|,|'") # Ignore ; , and '
  if(str_detect(split, "\\s")){
    split = str_split(line, "\\s")
  }
  #if(str_detect(split, "\\."))
  as.numeric(paste0(str_length(unlist(split)) %% 10, collapse = ""))
}
