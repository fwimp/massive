test_that("dry2wet converts properly", {
  expect_equal(round(dry2wet(c(1,2,3)), 3), c(3.143, 6.286, 9.429))
})
test_that("dry2wet factor works", {
  expect_equal(dry2wet(c(1,2,3), 3), c(3, 6, 9))
  expect_error(dry2wet(c(1,2,3), 1))
})
