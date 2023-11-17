test_that("linear_regression works", {
  x = matrix(rnorm(3*100), nrow = 100, ncol = 3)
  y = matrix(rnorm(1*100), nrow = 100, ncol = 1)
  res = linear_regression(x, y)
  lm_res = summary(lm(y ~ x))$coefficients
  std_err_lm = lm_res[ , 2]
  expect_equal(res$coefficients, lm_res[ , 1])
  expect_equal(res$std_err, std_err_lm)
  expect_equal(res$t_val, lm_res[ , 3])
  expect_equal(res$p_val, lm_res[ , 4])
})
