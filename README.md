
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Massive

<!-- badges: start -->

version \<- as.vector(read.dcf(‘DESCRIPTION’)\[, ‘Version’\]) version
\<- gsub(‘-’, ‘.’, version)
[![R](https://img.shields.io/badge/R%3E%3D-4.0-6666ff.svg?style=for-the-badge)](https://cran.r-project.org/)
[![packageversion](https://img.shields.io/badge/Package%20version-x86_64-w64-mingw32,%20x86_64,%20mingw32,%20ucrt,%20x86_64,%20mingw32,%20,%204,%203.0,%202023,%2004,%2021,%2084292,%20R,%20R%20version%204.3.0%20(2023-04-21%20ucrt),%20Already%20Tomorrow-orange.svg?style=for-the-badge)](commits/master)
[![license](https://img.shields.io/badge/license-GPL--3-blue.svg?style=for-the-badge)](https://www.gnu.org/licenses/gpl-3.0.en.html)
[![R-CMD-check](https://github.com/fwimp/massive/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/fwimp/massive/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

`massive` helps you convert & infer biological mass values.

## Installation

You can install the development version of massive like so:

``` r
# install.packages("devtools")
devtools::install_github("fwimp/massive", build_vignettes = TRUE)
```
