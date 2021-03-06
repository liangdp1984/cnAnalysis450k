% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/identifyCutoffs.R
\name{findCutoffs}
\alias{findCutoffs}
\title{Finding cutoffs}
\usage{
findCutoffs(data, zeichne = FALSE, ignoreNAs = FALSE, eps = 0.01,
  proximity = c(0, 0))
}
\arguments{
\item{data}{Inputdata}

\item{zeichne}{Debugging}

\item{ignoreNAs}{F / T: if NAs occur, proceed, otherwise fail}

\item{eps}{difference between x points (internal calculation)}

\item{proximity}{how many previous / following rows should be 
considered for cutoff determination? c(prev, folw)}
}
\value{
identified cutoffs
}
\description{
Analyzes row-wise histograms by selecting the global maximum (0),
as well as one further local maximum right (+) and left (-).
Can make use of previous/following rows.
}
\examples{
candMatrix <- data.frame(
smp1=c(-0.097, -1.208,-0.134, 1.732),
smp2=c(-0.006, 0.004, 0.004, -0.001),
smp3=c(0.050, 0.008, 0.008,0.046 ))
rownames(candMatrix) <- c(
"chr1:15865", "chr1:110230252",
"chr1:110254692", "chr3:45838226"
)
findCutoffs(candMatrix, proximity=c(1,0))
}

