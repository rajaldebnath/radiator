% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gds.R
\name{sync_gds}
\alias{sync_gds}
\title{sync_gds}
\usage{
sync_gds(gds, samples = NULL, markers = NULL, reset.gds = FALSE,
  reset.filters.m = FALSE, reset.filters.i = FALSE, verbose = FALSE)
}
\description{
Synchronize gds with samples and markers. If left NULL, the info
is first search in the radiator node, if not found, it goes in the level above.
An argument also allows to reset the filters.
}
\seealso{
\code{\link{sync_gds}}, \code{\link{list_filters}}.
}
\keyword{internal}
