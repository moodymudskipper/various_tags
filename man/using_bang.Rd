% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/04_tidy.R
\name{using_bang}
\alias{using_bang}
\title{using_bang tag to enable tidy evaluation or arguments}
\usage{
using_bang()
}
\description{
Use tidy evaluation on all arguments
}
\examples{
u <- "speed"
v <- quote(dist)
w <- rlang::quo(time)
x <- list(a=c(1, 2), b=c(3, 4))
using_bang$transform(head(cars,2), !!w := !!v / !!rlang::sym(u), !!!x)
}
