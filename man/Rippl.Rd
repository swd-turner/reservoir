% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sequent_peak_analysis.R
\name{Rippl}
\alias{Rippl}
\title{Rippl analysis}
\usage{
Rippl(Q, target, R, double_cycle = FALSE, plot = TRUE)
}
\arguments{
\item{Q}{vector or time series object. Net inflow totals to the reservoir.}

\item{target}{a target release constant in same volumteric units as Q. Can be omitted if R is given.}

\item{R}{a time series or vector of target releases (volumetric). Must be the same length as Q.}

\item{double_cycle}{logical. If TRUE the Q and R time series will be replicated and placed end-to-end to double the simulation. Recommended if the critical period occurs at the end of the sequence.}

\item{plot}{logical. If TRUE (the default) the storage behavior diagram is plotted.}
}
\value{
Returns the no-fail storage capacity and corresponding storage behaviour time series.
}
\description{
Computes the Rippl no-failure storage for given time series of inflows and releases using the sequent peak algorithm.
}
\examples{
# define a release vector for a constant release equal to 90 \% of the mean inflow
no_fail_storage <- Rippl(resX$Q_Mm3, target = 0.9 * mean(resX$Q_Mm3))$No_fail_storage
}
