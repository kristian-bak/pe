#' Plot PE as a scatter plot with only lines
#' @param data tibble with columns Date and PE (see load_shiller_pe)
#' @return plotly object
#'
plot_pe <- function(data) {

  data %>%
    plotly::plot_ly(x = ~Date, y = ~PE, type = "scatter", mode = "lines")

}
