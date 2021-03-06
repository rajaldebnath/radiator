% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dart.R
\name{extract_dart_target_id}
\alias{extract_dart_target_id}
\title{Extract \href{http://www.diversityarrays.com}{DArT} target id}
\usage{
extract_dart_target_id(data, write = TRUE)
}
\arguments{
\item{data}{DArT output file. Note that most popular formats used by DArT are
recognised (1- and 2- rows format, also called binary, and count data.).
If you encounter a problem, sent me your data so that I can update
the function. The function can import \code{.csv} or \code{.tsv} files.}

\item{write}{With default \code{write = TRUE}, the dart target id column is
written in a file in the working directory.}
}
\value{
A tidy dataframe with a \code{TARGET_ID} column. Spaces are remove and
UPPER case is used.
}
\description{
Used internally in \href{https://github.com/thierrygosselin/radiator}{radiator}
and might be of interest for users. The function allows to extract DArT
target id from a DArT file. To help prepare the appropriate STRATA file.
}
\examples{
\dontrun{
# Built a strata file:
strata <- radiator::extract_dart_target_id("mt.dart.file.csv") \%>\%
    dplyr::mutate(
        INDIVIDUALS = "new id you want to give",
        STRATA = "fill this"
    ) \%>\%
    readr::write_tsv(x = ., path = "my.new.dart.strata.tsv")
}
}
\author{
Thierry Gosselin \email{thierrygosselin@icloud.com} and Peter Grewe \email{peter.grewe@csiro.au}
}
