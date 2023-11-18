
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
contains a function called `linear_regression(X, Y)`

## Installation

You can install the development version of hw3lm from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ziyuliu1999/hw3_lm")
```

## Example

This is a basic example which shows you how to solve a common problem:

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
