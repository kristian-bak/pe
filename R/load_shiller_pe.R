#' Load Shiller PE
#'
load_shiller_pe <- function() {

  url <- "https://www.multpl.com/shiller-pe/table/by-month"

  df <- rvest::read_html(url) %>%
    rvest::html_table() %>%
    purrr::pluck(1)

  df %>%
    dplyr::mutate(Date = anytime::anydate(Date)) %>%
    dplyr::rename(PE = `Value\n\n\n\nValue`)

}
