#' Get the font names used by a gt table
#'
#' @param t a gt object
#'
#' @return A vector.
#' @export
#'
#' @examples
#' gt_iris <- gt::gt(iris)
#  get_font_names(gt_iris)
get_font_names <- function(t) {
  UseMethod("get_font_names")
}

get_font_names.gt_tbl <- function(t) {
  t[["_options"]] %>%
    dplyr::filter(parameter == "table_font_names") %>%
    dplyr::select(value) %>%
    dplyr::pull() %>%
    .[[1]]
}
