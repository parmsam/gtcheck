test_that("get_data() works", {
  tbl2_fn <- test_path("ref", "ex2.R")
  source(tbl2_fn)

  expect_s3_class(get_data(sp500_filt_tbl), "tbl_df")
  expect_true(
    all.equal(get_data(sp500_filt_tbl), sp500_filt, check.attributes = FALSE)
  )
})
