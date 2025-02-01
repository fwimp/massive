test_that("dry2j converts properly", {
  expect_equal(dry2j(c(1,2,3)), c(2.2e7, 4.4e7, 6.6e7))
})
