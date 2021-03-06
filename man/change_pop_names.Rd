% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/strata.R
\name{change_pop_names}
\alias{change_pop_names}
\title{Transform into a factor the POP_ID column, change names and reorder the levels}
\usage{
change_pop_names(data, pop.levels = NULL, pop.labels = NULL)
}
\arguments{
\item{data}{12 options for input: VCFs (SNPs or Haplotypes,
to make the vcf population ready),
plink, stacks haplotype file, genind (library(adegenet)),
genlight (library(adegenet)), gtypes (library(strataG)), genepop, DArT,
and a data frame in long/tidy or wide format. To verify that radiator detect
your file format use \code{\link{detect_genomic_format}} (see example below).
Documented in \strong{Input genomic datasets} of \code{\link{tidy_genomic_data}}.}

\item{pop.levels}{(optional, string) This refers to the levels in a factor. In this
case, the id of the pop.
Use this argument to have the pop ordered your way instead of the default
alphabetical or numerical order. e.g. \code{pop.levels = c("QUE", "ONT", "ALB")}
instead of the default \code{pop.levels = c("ALB", "ONT", "QUE")}.
White spaces in population names are replaced by underscore.
Default: \code{pop.levels = NULL}.}

\item{pop.labels}{(optional, string) Use this argument to rename/relabel
your pop or combine your pop. e.g. To combine \code{"QUE"} and \code{"ONT"}
into a new pop called \code{"NEW"}:
(1) First, define the levels for your pop with \code{pop.levels} argument:
\code{pop.levels = c("QUE", "ONT", "ALB")}.
(2) then, use \code{pop.labels} argument:
\code{pop.labels = c("NEW", "NEW", "ALB")}.
To rename \code{"QUE"} to \code{"TAS"}:
\code{pop.labels = c("TAS", "ONT", "ALB")}.
Default: \code{pop.labels = NULL}. If you find this too complicated,
there is also the \code{strata} argument that can do the same thing,
see below.
White spaces in population names are replaced by underscore.}
}
\description{
Transform into a factor the POP_ID column, change names and
reorder the levels. If the data as \code{STRATA} column instead of a
\code{POP_ID} column, the function will change the column name.
}
\seealso{
\code{\link{read_strata}}, \code{\link{summary_strata}},
\code{\link{individuals2strata}},
\code{\link{join_strata}}, \code{\link{generate_strata}}
}
\author{
Thierry Gosselin \email{thierrygosselin@icloud.com}
}
