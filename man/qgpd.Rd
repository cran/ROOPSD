% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gen.GPD.R
\name{qgpd}
\alias{qgpd}
\title{qgpd}
\usage{
qgpd(p, loc = 0, scale = 1, shape = 0, lower.tail = TRUE)
}
\arguments{
\item{p}{[vector] Vector of probabilities}

\item{loc}{[vector] Location parameter}

\item{scale}{[vector] Scale parameter}

\item{shape}{[vector] Shape parameter}

\item{lower.tail}{[bool] Return inverse of CDF if TRUE, else return inverse of survival function}
}
\value{
[vector] Inverse of CDF or SF of GPD for probabilities p
}
\description{
Inverse of CDF (or SF) function of Generalized Pareto distribution
}
\examples{
## Data
loc = 1
scale = 0.5
shape = -0.2
p = base::seq( 0.01 , 0.99 , length = 100 )
q = qgpd( p , loc = loc , scale = scale , shape = shape )
}
