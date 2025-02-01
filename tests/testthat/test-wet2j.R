test_that("wet2j converts properly", {
  expect_equal(wet2j(c(1,2,3)), c(7e6, 1.4e7, 2.1e7))
})
