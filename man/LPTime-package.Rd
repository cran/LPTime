\name{LPTime-package}
\alias{LPTime-package}

\docType{package}
\title{
Algorithm to analyze nonlinear time series data

}
\description{
This package provides general tools for analyzing non-Gaussian
nonlinear multivariate time series models. The algorithm is described
in the paper \emph{Nonlinear Time Series Modeling by LPTime,
  Nonparametric Empirical Learning., by Mukhopadhyay and Parzen
  (2013)}. The central idea behind LPTime time series modelling algorithm is to convert the original univariate time series \eqn{X(t)} into
\deqn{
  \mbox{Vec}(X)(t) = [\mbox{T}_{1}[X](t),\ldots, \mbox{T}_{k}[X](t)]^{T}
  } via tailor-made orthonormal (mid-rank based) nonlinear transformation
  that automatically tackles heavy-tailed
  process (such as daily S&P 500 return data) by injecting robustness in
  the time series analysis, applicable for discrete and continuous time
  series data modelling.

  The main functions are as follows: (1) \code{LPTime}; (2) \code{LPiTrack}
}
\details{
\tabular{ll}{
Package: \tab LPTime\cr
Type: \tab Package\cr
Version: \tab 1.0-2\cr
Date: \tab 2015-03-03\cr
License: \tab GPL (>= 2)\cr
}
}
\author{
  Subhadeep Mukhopadhyay,
  Shinjini Nandi

Maintainer: Shinjini Nandi <shinjini.nandi@temple.edu>

}
\references{
  Mukhopadhyay, S. and Nandi, S. (2015). \emph{LPiTrack: Eye Movement
    Pattern Recognition Algorithm and Application to Biometric
    Identification.}

  Mukhopadhyay, S. and Parzen, E. (2014). \emph{LP approach to statistical
    modeling. arXiv:1405.2601.}

  Mukhopadhyay S. and Parzen E. (2013). \emph{Nonlinear Time Series
    Modeling by LPTime, Nonparametric Empirical
    Learning. arXiv:1308.0642.}

  Parzen E. and Mukhopadhyay S. (2013a). \emph{LP Mixed Data Science:
    Outline of Theory. arXiv:1311.0562.}

  Parzen, E. and Mukhopadhyay, S. (2012).\emph{ Modeling, Dependence,
  Classification, United Statistical Science, Many Cultures. arXiv:1204.4699.}

}

\keyword{ package }
\seealso{
  \code{\link{LPTime}}, \code{\link{LP.moment}},
  \code{\link{LP.comoment}},
  \code{\link{LPiTrack}}
}
\examples{
library(LPTime)
data(EyeTrack.sample)
head(LPiTrack(EyeTrack.sample), m = c(3, 5, 15), p = 3)
}
