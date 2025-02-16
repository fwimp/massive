% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wet2dry.R
\name{wet2dry}
\alias{wet2dry}
\title{Convert wet weight to approximate (ash) dry weight}
\usage{
wet2dry(wet, fctr = 3.142857)
}
\arguments{
\item{wet}{A vector of wet masses in kg}

\item{fctr}{a factor between 3 and 10 to use in the conversion (as Peters specifies a range of possible conversions). Defaults to 22/7 (3.14) to keep the relationship between \link{dry2j} and \link{wet2j} consistent.}
}
\value{
The equivalent dry mass values in kg
}
\description{
This performs a simple conversion of wet weight to ash dry weight via Peters' approximate conversion.
}
\examples{
v <- rnorm(20, 10, 2)
v
wet2dry(v)
}
\references{
Peters, R.H. (1983) The Ecological Implications of Body Size. Cambridge: Cambridge University Press (Cambridge Studies in Ecology), pp. 231–296. \url{https://doi.org/10.1017/CBO9780511608551}, Appendix Ia
}
\author{
Francis Windram
}
\concept{converter}
