test_that("linear_regression works", {
  x = matrix(rnorm(3*100), nrow = 100, ncol = 3)
  y = matrix(rnorm(1*100), nrow = 100, ncol = 1)
  res = linear_regression(x, y)
  lm_res = summary(lm(y ~ x))$coefficients
  expect_equal(res, lm_res)
  data("mtcars")
  x_real = mtcars[, c(3, 4, 5, 6, 7)]
  y_real = mtcars[, 1]
  res_real = linear_regression(x_real, y_real)
  lm_res_real = summary(lm(mpg ~ disp + hp + drat + wt + qsec, data = mtcars))$coefficients
  expect_equal(res_real, lm_res_real)
})
