test_that("get_footnotes() works", {
  tbl1_fn <- test_path("ref", "ex1.R")
  source(tbl1_fn)

  fn1 <- gt_tbl %>%
    get_footnotes() %>%
    unique() %>%
    .[[1]]

  expect_equal(fn1, "The Americas.")
})
