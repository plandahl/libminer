
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->

[![R-CMD-check](https://github.com/plandahl/libminer/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/plandahl/libminer/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of libminer is to provide an overview ofyour R Library setup.
This is a test package created as part of a workshop.

## Installation

You can install the development version of libminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("plandahl/libminer")
```

## Example

To get a count of installed packages in each of your libraries use
`lib_summary()` This is a basic example which shows you how to solve a
common problem:

``` r
library(libminer)

lib_summary()
#>                                                                   Library
#> 1                                      C:/Program Files/R/R-4.2.1/library
#> 2 C:/Users/c052366/AppData/Local/Temp/Rtmpk5oUpl/temp_libpath2ef0623956d7
#>   n_packages
#> 1        274
#> 2          1
lib_summary(TRUE)
#>                                                                   Library
#> 1                                      C:/Program Files/R/R-4.2.1/library
#> 2 C:/Users/c052366/AppData/Local/Temp/Rtmpk5oUpl/temp_libpath2ef0623956d7
#>   n_packages  lib_size
#> 1        274 645799489
#> 2          1     13224
```
