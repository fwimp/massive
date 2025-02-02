test_that("wet2dry converts properly", {
  expect_equal(round(wet2dry(c(1,2,3)), 3), c(0.318, 0.636, 0.955))
})
test_that("wet2dry factor works", {
  expect_equal(wet2dry(c(3,6,9), 3), c(1, 2, 3))
  expect_error(wet2dry(c(1,2,3), 1))
})
