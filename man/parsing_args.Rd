% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/15_parsing_args.R
\name{parsing_args}
\alias{parsing_args}
\title{parse arguments of function before execution}
\usage{
parsing_args(.args = NULL, .eval = FALSE, .na = c("", "NA"),
  .locale = readr::default_locale(), .trim_ws = TRUE,
  .guess_integer = FALSE)
}
\arguments{
\item{.args}{character vector of arguments to consider, if NULL (default) all
arguments are candidates to be parsed.}

\item{na}{Character vector of strings to interpret as missing values. Set this option to character() to indicate no missing values.}

\item{locale}{The locale controls defaults that vary from place to place. The default locale is US-centric (like R), but you can use locale() to create your own locale that controls things like the default time zone, encoding, decimal mark, big mark, and day/month names.}

\item{trim_ws}{Should leading and trailing whitespace be trimmed from each field before parsing it?}

\item{guess_integer}{If TRUE, guess integer types for whole numbers, if FALSE guess numeric type for all numbers.}
}
\description{
A wrapper around \code{readr::parse_guess} to help deal easily with unconverted
user input.
}
\details{
Character inputs that are not parsed to other types by \code{readr::parse_guess}
are evaluated with \code{eval(parse(text=...))} if \code{.eval} is set to \code{TRUE}.

Non character inputs will not be converted, however they will be evaluated if
they are mentionned in \code{.args} or if \code{.args} is \code{NULL}
}
\examples{
parsing_args(.eval=TRUE)$head("cars", n= "2")
parsing_args(.args = "n")$head(cars, n= "2")
parsing_args$head(cars, n= "2")
}
