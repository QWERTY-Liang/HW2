# TLRpackage

<!-- badges: start -->

<!-- badges: end -->

The goal of TLRpackage is to read and summarise the Human Development Indicators data.

## Installation

You can install the development version of TLRpackage from [GitHub](https://github.com/) with:
https://github.com/QWERTY-Liang/HW2.git
``` r
# install.packages("devtools")
devtools::install_github("QWERTY-Liang/HW2")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(TLRpackage)
## basic example code

data <- TL_read("hdro_indicators_irl.csv")

class(data)
class(data$'year')
class(data$'country_code')

TL_print(data)

TL_summary(data)

TL_plot(data)
```
