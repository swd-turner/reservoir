% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/keystats.R
\name{keystats}
\alias{keystats}
\title{Generate a range of key water supply reservoir variables}
\usage{
keystats(Q, target, capacity)
}
\arguments{
\item{Q}{time series object representing the release time series of a reservoir.}

\item{target}{numerical. The constant target water delivery.}

\item{capacity}{numerical. The active capacity of the reservoir.}
}
\value{
Returns a wide range of statistics relating to the dynamics and performance of the reservoir.
}
\description{
For quuickly analyzing a range of stats relating to inflows, outflows, storage dynamics and performance.
}
\examples{
keystats(resX$Q_Mm3, target = 50, capacity = resX$cap_Mm3)
}
