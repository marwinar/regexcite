
<!-- README.md is generated from README.Rmd. Please edit that file -->

\*\*NOTE: this is a toy package created for learning purposes, based on
instructions in the book R packages (2nd edition).

# regexcite

<!-- badges: start -->
<!-- badges: end -->

The goal of regexcite is to make regular expressions more exciting! It
provides convenience functions to make some common tasks ith string
manipulation and regular expressions easier.

## Installation

You can install the development version of regexcite from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("marwinar/regexcite")
```

## Usage

A common task when dealing with strings is the need to split a single
string into many parts, based on a separator. This is what
`base::strsplit()` and `stringr::strsplit()` do.

``` r
(x <- "alfa,bravo,charlie,delta")
#> [1] "alfa,bravo,charlie,delta"
strsplit(x, split = ",")
#> [[1]]
#> [1] "alfa"    "bravo"   "charlie" "delta"
stringr::str_split(x, pattern = ",")
#> [[1]]
#> [1] "alfa"    "bravo"   "charlie" "delta"
```

Notice how the return value is a **list** of length one, where the first
element holds the parts. Often the shape of this output is inconvenient
and we want the unlisted version.

That’s exactly what `regexcite::str_split_one()` does.

``` r
library(regexcite)

str_split_one(x, pattern = ",")
#> [1] "alfa"    "bravo"   "charlie" "delta"
```

Use `str_split_one()` when the input is known to be a single string. For
safety, it will error if its input has length greater than one.

`str_split_one()` is built on `stringr::str_split()`, so you can use
it’s `n` argument and such.

``` r
str_split_one(x, pattern = ",", n = 2)
#> [1] "alfa"                "bravo,charlie,delta"

y <- "192.168.0.1"
str_split_one(y, pattern = stringr::fixed("."))
#> [1] "192" "168" "0"   "1"
```
