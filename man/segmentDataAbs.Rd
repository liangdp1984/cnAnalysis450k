% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/segmentDataAbs.R
\name{segmentDataAbs}
\alias{segmentDataAbs}
\title{Define gain / loss with given cutoffs}
\usage{
segmentDataAbs(data, upper, lower, ylim = NULL, plot = TRUE)
}
\arguments{
\item{data}{segmentMatrix, e.g. acquired with createSegmentMatrix}

\item{upper}{Upper cutoff (+1)}

\item{lower}{Lower cutoff (-1)}

\item{ylim}{y-axis limits of cutoff plot}

\item{plot}{Should the data be plotted? Might take a long time.}
}
\value{
matrix, containing -1,0,+1 for losses / gains
}
\description{
Use absolute cutoffs to create CNV gain / loss matrix.
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
segmentDataAbs(candMatrix, upper=0.1, lower=-0.15)
}

