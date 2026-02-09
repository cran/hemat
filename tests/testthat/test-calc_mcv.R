testthat::test_that('Verificando função calc_mcv', {
  testthat::expect_equal(calc_mcv(40, 5), 80.0)
  testthat::expect_equal(calc_mcv(30, 3), 100.0)
  testthat::expect_error(calc_mcv())
  testthat::expect_error(calc_mcv(-10, 50))
  testthat::expect_error(calc_mcv(10, -50))
  testthat::expect_error(calc_mcv(10, 0))
  })
