#' Get the footnotes used by a gt table
#'
#' @param t a gt object
#'
#' @return A tibble.
#' @export
#'
#' @examples
#' gt_iris <- gt::gt(iris)
#  get_footnotes(gt_iris)
get_footnotes <- function(t) {
  UseMethod("get_footnotes")
}

#' @export
get_footnotes.gt_tbl <- function(t) {
  t[["_footnotes"]] %>%
    dplyr::pull(footnotes)
}
