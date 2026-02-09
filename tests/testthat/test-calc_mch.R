testthat::test_that('Verificando função calc_mch', {
  testthat::expect_equal(calc_mch(10, 5), 20.0)
  testthat::expect_equal(calc_mch(10, 2), 50.0)
  testthat::expect_error(calc_mch())
  testthat::expect_error(calc_mch(-10, 5))
  testthat::expect_error(calc_mch(10, -5))
  testthat::expect_error(calc_mch(15, 0))
})
