% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/str_split_one.R
\name{str_split_one}
\alias{str_split_one}
\title{Split a string}
\usage{
str_split_one(string, pattern, n = Inf)
}
\arguments{
\item{string}{A character vector with one element.}

\item{pattern}{What to split on.}

\item{n}{The maximum length of each element of the output.}
}
\value{
A character vector.
}
\description{
Split a string
}
\examples{
x <- "alfa,bravo,delta,charlie"
str_split_one(x, pattern=",")
}
