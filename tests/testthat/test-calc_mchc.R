testthat::test_that('Verificando função calc_mchc', {
  testthat::expect_equal(calc_mchc(15, 40), 37.5)
  testthat::expect_equal(calc_mchc(10, 15), 66.7)
  testthat::expect_error(calc_mchc())
  testthat::expect_error(calc_mchc(-10, 50))
  testthat::expect_error(calc_mchc(10, -50))
  testthat::expect_error(calc_mchc(10, 0))
})

