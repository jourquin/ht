% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ht.R
\name{ht}
\alias{ht}
\alias{ht}
\alias{[.ht}
\alias{[<-.ht}
\alias{\%in.ht\%}
\title{Tiny Hash Table}
\usage{
ht()

\method{[}{ht}(x, index)

\method{[}{ht}(x, index) <- value

index \%in.ht\% x
}
\arguments{
\item{x}{an \code{ht} object}

\item{index}{A key object}

\item{value}{A value object}
}
\description{
This is a very basic implementation of a hash table using the \code{digest} package,
primarily for teaching functions and S3 for R programmers.
}
\details{
\code{ht} is an S3 class that extends \code{environment}, and additionally provides \code{[} and \code{[<-}.
It can use arbitrary R objects as keys and values.

Currently, default options are assummed for \code{digest} and hash collisions are not dealt with at all.
}
\examples{
 x <- ht()
 x[1] <- 1
 x[1:2] <- 3:4
 x[1]
 x[1:2]
 1:2 \%in.ht\% x
 mget(ls(x),x)
 if(require(digest)) x[[digest(1:2)]]
}
\seealso{
\code{\link[digest]{digest}}
}
