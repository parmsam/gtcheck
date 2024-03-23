test_that("get_data() works", {
  start_date <- "2010-06-07"
  end_date <- "2010-06-14"
  sp500_filt <- gt::sp500 |>
    dplyr::filter(date >= start_date & date <= end_date) |>
    dplyr::select(-adj_close)
  sp500_filt_tbl <- sp500_filt |>
    gt::gt() |>
    gt::tab_header(
      title = "S&P 500",
      subtitle = glue::glue("{start_date} to {end_date}")
    ) |>
    gt::fmt_currency() |>
    gt::fmt_date(columns = date, date_style = "wd_m_day_year") |>
    gt::fmt_number(columns = volume, suffixing = TRUE)

  expect_s3_class(get_data(sp500_filt_tbl), "tbl_df")
  expect_true(
    all.equal(get_data(sp500_filt_tbl), sp500_filt, check.attributes = FALSE)
  )
})
