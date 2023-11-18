# hw3_lm

<!-- badges: start -->
[![R-CMD-check](https://github.com/ziyuliu1999/hw3_lm/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ziyuliu1999/hw3_lm/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

<!-- badges: start -->
  [![Codecov test coverage](https://codecov.io/gh/ziyuliu1999/hw3_lm/branch/main/graph/badge.svg)](https://app.codecov.io/gh/ziyuliu1999/hw3_lm?branch=main)
  <!-- badges: end -->


## Overview

hw3_lm is a R package created for the biostat625 homework 3. hw3_lm contains a function called `linear_regression(X, Y)`


`linear_regression(X, Y)` is expected to get the same result of the summary(lm(Y ~ X))$coefficients. The return value is a list with four elements. The first element is the coefficient of the linear regression, which is the first column of summary(lm(Y ~ X))$coefficients. The second element is the standard error of the corresponding coefficients, which is the second column of summary(lm(Y ~ X))$coefficients. The third element is the t value of the corresponding coefficients, which is the thir column of summary(lm(Y ~ X))$coefficients. The fourth element is the p value of the corresponding coefficient, which is the fourth column of summary(lm(Y ~ X))$coefficients.

## Installation

``` r
# install.packages("devtools")
devtools::install_github("ziyuliu1999/hw3_lm")
```

## Useage

