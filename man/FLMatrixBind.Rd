% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FLMatrixBind.R
\name{FLMatrixBind}
\alias{FLMatrixBind}
\title{Bind a matrix/array by an index. Currently limited to matrices
with character dimnames}
\usage{
FLMatrixBind(parts, by)
}
\arguments{
\item{parts}{}

\item{by}{the numeric index by which binding takes place}
}
\value{
returns a remote matrix object defining the deep table sql for the *bound result.
}
\description{
Bind a matrix/array by an index. Currently limited to matrices
with character dimnames
}
