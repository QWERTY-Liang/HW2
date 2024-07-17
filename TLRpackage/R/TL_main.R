#' Read in HDI Data, export a new class with correct title
#'
#' @param file  file (hdro_indicators_COUNTRYNAME.csv)
#'
#' @return new class "HDI".
#' @export
#'
#' @examples
#' function(file)
TL_read <- function(file) {
  data <- fread(file,skip=1)#read.csv(file, stringsAsFactors = TRUE)
  setnames(data, c("country_code", "country_name", "indicator_id", "indicator_name", "index_id", "index_name", "value", "year"))
  class(data) <- c("HDI", class(data))
  return(data)
}




#' Print Method for HDI Class
#'
#' @param x new HDI Class
#' @param ... Further arguments
#'
#' @return None. Prints the first 10 rows
#' @export
#'
#' @examples
#' data <- TL_read("path/to/hdro_indicators_aggregates_irl.csv")
#' TL_print(data)
TL_print <- function(x, ...) {

  print(head(x, 2))
}

#' Summary Method for HDI Class
#'
#' @param x new HDI Class
#' @param ... Further arguments
#'
#' @return summary of the new HDI object.
#' @export
#'
#' @examples
#' data <- TL_read("path/to/hdro_indicators_aggregates_irl.csv")
#' TL_summary(data)
TL_summary <- function(x, ...) {
  summary(x)
}



#' Plot Method for HDI Class
#'
#' @param x new HDI Class
#' @param ... Further arguments
#'
#' @return a plot
#' @export
#'
#' @examples
#' data <- TL_read("path/to/hdro_indicators_aggregates_irl.csv")
#' TL_plot(data)
TL_plot <- function(x, ...) {
 plot(x)
}

#setMethod("print", "HDI", TL_print)
#setMethod("summary", "HDI", TL_summary)
#setMethod("plot", "HDI", TL_plot)

