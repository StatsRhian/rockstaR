parse_rockstar = function(x){
  x %>%
  purrr::map(rewrite, rules = default_rules()) %>%
    unlist()
}
