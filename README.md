# hw3_lm

<!-- badges: start -->
[![R-CMD-check](https://github.com/ziyuliu1999/hw3_lm/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ziyuliu1999/hw3_lm/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

<!-- badges: start -->
  [![Codecov test coverage](https://codecov.io/gh/ziyuliu1999/hw3_lm/branch/main/graph/badge.svg)](https://app.codecov.io/gh/ziyuliu1999/hw3_lm?branch=main)
  <!-- badges: end -->


## Overview

hw3_lm is a R package created for the biostat625 homework 3. hw3_lm contains a function called `linear_regression(X, Y)`


`linear_regression(X, Y)` is expected to get the same result of the summary(lm(Y ~ X))$coefficients. The return value is a list with four elements. The first element is the coefficient of the linear regression, which is the first column of summary(lm(Y ~ X))$coefficients.
