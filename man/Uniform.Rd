% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dist.Uniform.R
\name{Uniform}
\alias{Uniform}
\title{Uniform}
\description{
Uniform distribution in OOP way. Based on AbstractDist
}
\details{
See AbstractDist for generic methods
}
\examples{
## Generate sample
min = -1
max = 1
unifl = ROOPSD::Uniform$new( min = min , max = max )
X     = unifl$rvs( n = 1000 )

## And fit parameters
unifl$fit(X)

}
\section{Super class}{
\code{\link[ROOPSD:AbstractDist]{ROOPSD::AbstractDist}} -> \code{Uniform}
}
\section{Active bindings}{
\if{html}{\out{<div class="r6-active-bindings">}}
\describe{
\item{\code{min}}{[double] min of the uniform law}

\item{\code{max}}{[double] max of the uniform law}

\item{\code{params}}{[vector] params of the uniform law}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{Uniform$new()}}
\item \href{#method-clone}{\code{Uniform$clone()}}
}
}
\if{html}{
\out{<details ><summary>Inherited methods</summary>}
\itemize{
\item \out{<span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="cdf">}\href{../../ROOPSD/html/AbstractDist.html#method-cdf}{\code{ROOPSD::AbstractDist$cdf()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="density">}\href{../../ROOPSD/html/AbstractDist.html#method-density}{\code{ROOPSD::AbstractDist$density()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="fit">}\href{../../ROOPSD/html/AbstractDist.html#method-fit}{\code{ROOPSD::AbstractDist$fit()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="icdf">}\href{../../ROOPSD/html/AbstractDist.html#method-icdf}{\code{ROOPSD::AbstractDist$icdf()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="isf">}\href{../../ROOPSD/html/AbstractDist.html#method-isf}{\code{ROOPSD::AbstractDist$isf()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="logdensity">}\href{../../ROOPSD/html/AbstractDist.html#method-logdensity}{\code{ROOPSD::AbstractDist$logdensity()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="rvs">}\href{../../ROOPSD/html/AbstractDist.html#method-rvs}{\code{ROOPSD::AbstractDist$rvs()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="sf">}\href{../../ROOPSD/html/AbstractDist.html#method-sf}{\code{ROOPSD::AbstractDist$sf()}}\out{</span>}
}
\out{</details>}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
Create a new Uniform object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Uniform$new(min = 0, max = 1)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{min}}{[double] Min of the uniform law}

\item{\code{max}}{[double] Max of the uniform law}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A new `Uniform` object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Uniform$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
