#'linear_regression
#
#'Fit the linear models
#'
#'@param X predictors input. The X should be the predictors that you want to use to fit the model. It should be either a matrix or a dataframe.
#'@param Y response values. The Y should be the response used to fit the linear model. It should be be either a matrix or a dataframe
#'
#'@return It will return a list with the linear model coefficients, coefficients corresponding standard error, coefficients t values and coefficients p values
#'
#'@examples
#'linear_regression(X = matrix(rnorm(3*100), nrow = 100, ncol = 3), Y = matrix(rnorm(1*100), nrow = 100, ncol = 1))
#'
#' @export
#'


linear_regression = function (X, Y) {
  X = cbind(rep(1, nrow(X)), X)
  X = as.matrix(X)
  Y = as.matrix(Y)
  beta_hat = solve(t(X) %*% X) %*% t(X) %*% Y
  err_var = sum((X %*% beta_hat - Y)^2) / (nrow(X) - ncol(X))
  std_err = sqrt(err_var)
  std_err_1 = c()
  for (i in 1:nrow(beta_hat)) {
    std_err_1 = c(std_err_1, sqrt(solve((t(X) %*% X))[i,i] * err_var))
  }
  t_val = beta_hat / std_err_1
  p_val = c()
  for (i in 1:nrow(t_val)) {
    p_val = c(p_val, 2 * pt(abs(t_val[i]), df = nrow(X) - ncol(X), lower.tail = FALSE))
  }
  beta_hat = t(beta_hat)
  beta_hat = c(beta_hat)
  if (is.null(colnames(X))) {
    nmb_pred = ncol(X) - 1
    col_nam = 1:nmb_pred
    col_nam = paste0("x", col_nam)
  } else {
    col_nam = colnames(X)
  }
  names(beta_hat) = c("(Intercept)", col_nam)
  names(std_err_1) = c("(Intercept)", col_nam)
  t_val = c(t(t_val))
  names(t_val) = c("(Intercept)", col_nam)
  names(p_val) = c("(Intercept)", col_nam)
  return(list(coefficients = beta_hat, std_err = std_err_1, t_val = t_val, p_val = p_val))
}




