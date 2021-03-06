% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/replicate.R
\name{replicate}
\alias{replicate}
\alias{dereplicate}
\alias{rereplicate}
\title{Dereplicate and rereplicate sequence datasets.}
\usage{
dereplicate(x, cores = 1)

rereplicate(x)
}
\arguments{
\item{x}{a list of sequences in \code{DNAbin} or \code{AAbin} format, or a
vector of sequences as concatenated upper-case character strings.}

\item{cores}{integer giving the number of CPUs to use (defaults to 1).
This argument may alternatively be a 'cluster' object,
in which case it is the user's responsibility to close the socket
connection at the conclusion of the operation,
e.g. by running \code{parallel::stopCluster(cores)}.
The string 'autodetect' is also accepted, in which case the maximum
number of cores to use is one less than the total number of cores
available.}
}
\value{
either a DNAbin/AAbin object, or a vector of concatenated
  upper-case character strings, depending on the input object.
}
\description{
These functions are used to extract only the unique sequences from
  a set of DNA reads, with the ability to rebuild the original
  sequence set at a later time.
}
\examples{
  data(whales)
  tmp <- dereplicate(whales)
  whales <- rereplicate(tmp)
}
\author{
Shaun Wilkinson
}
