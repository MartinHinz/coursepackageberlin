context("double_me")

test_that("the result from double_me is twice the input", {
  expect_equal(double_me(2), 4)
})

context("sample_letters")

test_that("the result from sample_letters is letters only", {
  expect_true(all(grepl("^[a-z]+$", sample_letters(100), perl = T) ))
})
