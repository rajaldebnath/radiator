% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter_rad.R
\name{filter_rad}
\alias{filter_rad}
\title{ONE FUNCTION TO RULE THEM ALL}
\usage{
filter_rad(data, strata = NULL, interactive.filter = TRUE,
  output = NULL, filename = NULL, verbose = TRUE,
  parallel.core = parallel::detectCores() - 1, ...)
}
\arguments{
\item{data}{12 options for input: VCFs (SNPs or Haplotypes,
to make the vcf population ready),
plink, stacks haplotype file, genind (library(adegenet)),
genlight (library(adegenet)), gtypes (library(strataG)), genepop, DArT,
and a data frame in long/tidy or wide format. To verify that radiator detect
your file format use \code{\link{detect_genomic_format}} (see example below).
Documented in \strong{Input genomic datasets} of \code{\link{tidy_genomic_data}}.}

\item{strata}{(optional)
The strata file is a tab delimited file with a minimum of 2 columns headers:
\code{INDIVIDUALS} and \code{STRATA}. Documented in \code{\link{read_strata}}.
Default: \code{strata = NULL}.}

\item{interactive.filter}{(optional, logical) Do you want the filtering session to
be interactive. Figures of distribution are shown before asking for filtering
thresholds.
Default: \code{interactive.filter = TRUE}.}

\item{output}{26 genomic data formats can be exported: tidy (by default),
genepop, genind, genlight, vcf (for file format version, see details below),
plink, structure, faststructure, arlequin, hierfstat, gtypes (strataG), bayescan, betadiv,
pcadapt, hzar, fineradstructure, related, seqarray, snprelate and maverick.
Use a character string,
e.g. \code{output = c("genind", "genepop", "structure")}, to have preferred
output formats generated. With default, only the tidy format is generated.
Default: \code{output = NULL}.}

\item{filename}{(optional) The filename prefix for the objet in the global environment
or the working directory. Default: \code{filename = NULL}. A default name will be used,
customized with the output file(s) selected.}

\item{verbose}{(optional, logical) When \code{verbose = TRUE}
the function is a little more chatty during execution.
Default: \code{verbose = TRUE}.}

\item{parallel.core}{(optional) The number of core used for parallel
execution during import.
Default: \code{parallel.core = parallel::detectCores() - 1}.}

\item{...}{(optional) To pass further argument for fine-tuning the function.}
}
\value{
The function returns an object (list). The content of the object
can be listed with \code{names(object)} and use \code{$} to isolate specific
object (see examples). Some output format will write the output file in the
working directory. The tidy genomic data frame is generated automatically.
}
\description{
Designed for RADseq data, it's radiator integrated pipeline that links
several \code{filter_} functions of \pkg{radiator}.
Rapidly get an idea of what you can and cannot do with your dataset.
Novices, start with this one!
}
\note{
The function requires 2 packages (not installed automatically with radiator):
\itemize{
\item HardyWeinberg: to filter markers in HWD
\item ggtern: to generate ternary graph
}
}
\examples{
\dontrun{
require(HardyWeinberg)
require(ggtern)
shark <- radiator::filter_rad(
    data = "data.shark.vcf",
    strata = "strata.shark.tsv",
    output = "genind",
    filename = "shark.filters")
}
}
\author{
Thierry Gosselin \email{thierrygosselin@icloud.com} and
Peter Grewe \email{peter.grewe@csiro.au}
}
