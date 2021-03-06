% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter_ld.R
\name{ld_missing}
\alias{ld_missing}
\title{Prune dataset based on LD and missingness.}
\usage{
ld_missing(wl, data, ld.threshold = seq(0.1, 0.9, by = 0.1),
  denovo = NULL, ld.method = "r2", ld.figures = TRUE,
  path.folder = NULL, parallel.core = parallel::detectCores() - 1,
  verbose = TRUE)
}
\arguments{
\item{wl}{The split dataset by chromosome.}

\item{data}{The GDS object.}

\item{ld.threshold}{The LD threshold.}

\item{denovo}{de novo data or not ? (logical).}

\item{ld.method}{The method to compute LD.}

\item{ld.figures}{(logical, optional) Default: \code{ld.figures = TRUE}.}

\item{path.folder}{(character) The path to the folder.}

\item{parallel.core}{The number of CPU.}

\item{verbose}{(logical, optional) Default: \code{verbose = TRUE}.}
}
\value{
A list with whitelists and blacklists of markers in LD.
}
\description{
Used internally in \href{https://github.com/thierrygosselin/radiator}{radiator}
Prune dataset based on LD, uses missingness to keep 1 SNP. This is the function
that does it for 1 chrom. It's then used with purrr::map to run seriall on all chrom.
}
\author{
Thierry Gosselin \email{thierrygosselin@icloud.com}
}
\keyword{internal}
