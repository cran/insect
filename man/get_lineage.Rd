% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/taxonomy.R
\name{get_lineage}
\alias{get_lineage}
\title{Get full lineage details from a taxonomic ID number.}
\usage{
get_lineage(taxIDs, db, simplify = TRUE, numbers = FALSE, cores = 1)
}
\arguments{
\item{taxIDs}{integer or vector of integers giving the taxonomic ID number(s).}

\item{db}{a taxonomy database (a data.frame object).
See \code{\link{taxonomy}} for details.}

\item{simplify}{logical indicating whether a single lineage
derived from a length-one input
should be simplified from a list to a named character vector.
Defaults to TRUE.}

\item{numbers}{logical indicating whether the output string(s) should
be comprised of the taxonomic ID numbers rather than taxon names.
Defaults to FALSE.}

\item{cores}{integer giving the number of CPUs to parallelize the operation
over (Defaults to 1). This argument may alternatively be a 'cluster' object,
in which case it is the user's responsibility to close the socket
connection at the conclusion of the operation,
for example by running \code{parallel::stopCluster(cores)}.
The string 'autodetect' is also accepted, in which case the maximum
number of cores to use is one less than the total number of cores available.
Note that in this case there
may be a tradeoff in terms of speed depending on the number and size
of sequences to be processed, due to the extra time required to initialize
the cluster.}
}
\value{
the full lineage as a named character vector, or list of named character
  vectors if the length of the input object is > 1 or simplify = FALSE.
  "names" attributes are taxonomic ranks.
}
\description{
This function derives the full lineage of a taxon ID number
  from a given taxonomy database.
}
\examples{
data(whales)
data(whale_taxonomy)
taxIDs <- as.integer(gsub(".+\\\\|", "", names(whales)[1:2]))
get_lineage(taxIDs, db = whale_taxonomy)
}
\references{
Federhen S (2012) The NCBI Taxonomy database.
 \emph{Nucleic Acids Research}
 \strong{40}, D136-D143. doi:10.1093/nar/gkr1178.

 \url{https://www.ncbi.nlm.nih.gov/taxonomy/}
}
\author{
Shaun Wilkinson
}
