% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dist.GPD.R
\name{GPD}
\alias{GPD}
\title{GPD}
\description{
GPD distribution in OOP way. Based on AbstractDist
}
\details{
See AbstractDist for generic methods
}
\examples{
## Generate sample
loc   = 0
scale = 0.5
shape = -0.3
gpd = ROOPSD::GPD$new( loc = loc , scale = scale , shape = shape )
X   = gpd$rvs( n = 1000 )

## And fit parameters
gpd$fit( X , loc = 0 )

}
\section{Super class}{
\code{\link[ROOPSD:AbstractDist]{ROOPSD::AbstractDist}} -> \code{GPD}
}
\section{Active bindings}{
\if{html}{\out{<div class="r6-active-bindings">}}
\describe{
\item{\code{loc}}{[double] location of the GPD law, fixed}

\item{\code{scale}}{[double] scale of the GPD law}

\item{\code{shape}}{[double] shape of the GPD law}

\item{\code{params}}{[vector] params of the GPD law}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-GPD-new}{\code{GPD$new()}}
\item \href{#method-GPD-fit}{\code{GPD$fit()}}
\item \href{#method-GPD-clone}{\code{GPD$clone()}}
}
}
\if{html}{\out{
<details><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="cdf"><a href='../../ROOPSD/html/AbstractDist.html#method-AbstractDist-cdf'><code>ROOPSD::AbstractDist$cdf()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="density"><a href='../../ROOPSD/html/AbstractDist.html#method-AbstractDist-density'><code>ROOPSD::AbstractDist$density()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="diagnostic"><a href='../../ROOPSD/html/AbstractDist.html#method-AbstractDist-diagnostic'><code>ROOPSD::AbstractDist$diagnostic()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="icdf"><a href='../../ROOPSD/html/AbstractDist.html#method-AbstractDist-icdf'><code>ROOPSD::AbstractDist$icdf()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="isf"><a href='../../ROOPSD/html/AbstractDist.html#method-AbstractDist-isf'><code>ROOPSD::AbstractDist$isf()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="logdensity"><a href='../../ROOPSD/html/AbstractDist.html#method-AbstractDist-logdensity'><code>ROOPSD::AbstractDist$logdensity()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="pdeltaCI"><a href='../../ROOPSD/html/AbstractDist.html#method-AbstractDist-pdeltaCI'><code>ROOPSD::AbstractDist$pdeltaCI()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="qdeltaCI"><a href='../../ROOPSD/html/AbstractDist.html#method-AbstractDist-qdeltaCI'><code>ROOPSD::AbstractDist$qdeltaCI()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="qgradient"><a href='../../ROOPSD/html/AbstractDist.html#method-AbstractDist-qgradient'><code>ROOPSD::AbstractDist$qgradient()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="rvs"><a href='../../ROOPSD/html/AbstractDist.html#method-AbstractDist-rvs'><code>ROOPSD::AbstractDist$rvs()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ROOPSD" data-topic="AbstractDist" data-id="sf"><a href='../../ROOPSD/html/AbstractDist.html#method-AbstractDist-sf'><code>ROOPSD::AbstractDist$sf()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GPD-new"></a>}}
\if{latex}{\out{\hypertarget{method-GPD-new}{}}}
\subsection{Method \code{new()}}{
Create a new GPD object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GPD$new(loc = 0, scale = 1, shape = -0.1)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{loc}}{[double] location parameter}

\item{\code{scale}}{[double] scale parameter}

\item{\code{shape}}{[double] shape parameter}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A new `GPD` object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GPD-fit"></a>}}
\if{latex}{\out{\hypertarget{method-GPD-fit}{}}}
\subsection{Method \code{fit()}}{
Fit method
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GPD$fit(Y, loc = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{Y}}{[vector] Dataset to infer the histogram}

\item{\code{loc}}{[double] location parameter, if NULL used min(Y)}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
`self`
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GPD-clone"></a>}}
\if{latex}{\out{\hypertarget{method-GPD-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GPD$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
