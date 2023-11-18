
<!-- README.md is generated from README.Rmd. Please edit that file -->

# hw3lm

<!-- badges: start -->

[![R-CMD-check](https://github.com/ziyuliu1999/hw3_lm/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ziyuliu1999/hw3_lm/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

<!-- badges: start -->

[![Codecov test
coverage](https://codecov.io/gh/ziyuliu1999/hw3_lm/branch/main/graph/badge.svg)](https://app.codecov.io/gh/ziyuliu1999/hw3_lm?branch=main)
<!-- badges: end -->

## Overview

hw3_lm is a R package created for the biostat625 homework 3. hw3_lm
contain two function which are `linear_regression(X, Y)` and
`sum_func(numbs)`

`linear_regression(X, Y)` is a function that fit in a linear model with
matrix/dataframe Y as the response and matrix/dataframe X as the
predictor. The return is expected to get the same result with the
`summary(lm(Y ~ X))$coefficients`. The return value is a table with four
columns. The first column is the coefficients estimate, the second
columns is the coefficients corresponding standard error, the third
columns is the coefficients corresponding t values and the fourth column
is the coefficient corresponding p values.

`sum_func(numbs)` is a function that will calculate the sum of the
number element in the list. The return is expected to get the same
result with `sum(numbs)`. The return will be a number.

## Installation

You can install the development version of hw3lm from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ziyuliu1999/hw3_lm")
```

## Example

This is a basic example which shows you how to solve a common problem
using `linear_regression` function in the package:

``` r
library(hw3lm)
set.seed(1)
x = matrix(rnorm(3*100), nrow = 100, ncol = 3)
y = matrix(rnorm(1*100), nrow = 100, ncol = 1)
res = linear_regression(x, y)
```

We use `rnorm` to generate a $100 \times 3$ dimensional matrix as the
predictors of the fitting model and generate a $100 \times 1$
dimensional matrix as the response of the fitting model. To make the
code reproducible, let’s set the seed to 1.

Here is the return of te `linear_regression` model. The first column is
the coefficients estimate, the second column is the standard error of
the corresponding coefficients, the third column is the t value of the
corresponding coefficients, and the fourth column is the P-value of the
coefficients. A same perfomance can be achieved via using the
`summary(lm(y ~ x))$coefficients`.

``` r
res
#>                Estimate Std. Error    t value  Pr(>|t|)
#> (Intercept)  0.05273106 0.10064857  0.5239127 0.6015467
#> x1          -0.05795886 0.11169312 -0.5189116 0.6050165
#> x2          -0.05494186 0.10484521 -0.5240283 0.6014667
#> x3           0.10462312 0.09711815  1.0772767 0.2840563
```

This is a basic example which shows you how to solve a common problem
using `sum_func` function in the package:

``` r
sum_func(1:10)
#> [1] 55
```

We used the list number `1, 2, ...10` as a example input used in the
`sum_func`.
