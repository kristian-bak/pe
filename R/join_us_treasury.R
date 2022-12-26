#' Join Market Yield on U.S. Treasury Securities at 2-Year Constant Maturity
#' @param data tibble with PE data (see load_shiller_pe)
#' @return tibble with US treasury joined onto input data ordered by Date
#'
join_us_treasury <- function(data) {

  df_us <- kb.yahoo::load_data(ticker = "DGS2", src = "FRED")

  data %>%
    dplyr::inner_join(df_us %>% dplyr::select(Date, DGS2, DGS2_Change), by = "Date") %>%
    dplyr::arrange(Date)

}
