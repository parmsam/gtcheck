#' Get the data set used by a gt table
#'
#' @param t a gt object
#'
#' @return A tibble.
#' @export
#'
#' @examples
#' gt_iris <- gt::gt(iris)
#  get_data(gt_iris)
get_data <- function(t) {
  UseMethod("get_data")
}

#' @export
get_data.gt_tbl <- function(t) {
  t[["_data"]]
}
