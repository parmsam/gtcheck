islands_tbl <-
  dplyr::tibble(
    name = names(datasets::islands),
    size = datasets::islands
  ) |>
  dplyr::arrange(dplyr::desc(size)) %>%
  utils::head(10)

gt_tbl <- gt::gt(islands_tbl)

gt_tbl <- gt_tbl |>
  gt::tab_header(
    title = gt::md("**Large Landmasses of the World**"),
    subtitle = gt::md("The *top two* largest are presented")
  )

gt_tbl <-
  gt_tbl |>
  gt::tab_source_note(
    source_note = "Source: The World Almanac and Book of Facts, 1975, page 406."
  ) |>
  gt::tab_source_note(
    source_note = gt::md("Reference: McNeil, D. R. (1977) *Interactive Data Analysis*. Wiley.")
  )

gt_tbl <- gt_tbl |>
  gt::tab_footnote(
    footnote = "The Americas.",
    locations = gt::cells_body(columns = name, rows = 3:4)
  )
