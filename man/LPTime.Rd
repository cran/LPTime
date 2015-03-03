\name{LPTime}
\alias{LPTime}

\title{
Fits Vector Autoregressive model on LP transformed time series data
}
\description{
Accepts possibly non-Gaussian non-linear  univariate (stationary) time
series data; converts it to multivariate LP-transformed series and fits a vector autoregressive
(VAR) model.
}
\usage{
LPTime(z, exo = NULL, m = 3, p = 10)
}

\arguments{
  \item{z}{
Endogenous time series to be included in the VAR model.
}
  \item{exo}{
Exogenous time series to be included in the VAR model.
}
  \item{m}{
The number of required LP-transformations.
}
  \item{p}{
Lag-order of autoregression.
}
}
\details{
 LPTime algorithm models univariate stationary nonlinear process \eqn{ X(t)} via
 linear modelling of the multivariate time series:
 \deqn{
   \mbox{Vec}(X)(t) = [\mbox{T}_{1}[X](t),\ldots, \mbox{T}_{m}[X](t)]^{T},
  }
  where each of the time series components \eqn{\mbox{T}_{j}[X](t)} are polynomials of
  rank transformed \eqn{X(t)}.

  It fits vector autoregressive model of the form
  \deqn{
   \mbox{ Vec(T}[X])(t) = \sum_{k=1}^{p} A(k ; p)\, \mbox{Vec(T}[X])(t-k) \;+\; \epsilon(t).
  }
  where \eqn{\epsilon(t)} is multivariate mean zero Gaussian white noise with covariance \eqn{\Sigma_{p}}.

}
\value{
A matrix of the estimated autoregressive coefficients obtained from
LP-VAR model.

}
\references{
Mukhopadhyay, S. and Parzen, E. (2013).\emph{ Nonlinear time series
  modeling by LPTime, nonparametric empirical learning. arXiv:1308.0642.}
}
\author{
Shinjini Nandi
}
\seealso{
\code{\link{LPTrans}}, \code{\link{VAR}}
}
\examples{
library(LPTime)
data(EyeTrack.sample)
head( LPTime(EyeTrack.sample, m = 2, p = 2))

}
\keyword{ multivariate }
\keyword{ ts }
\keyword{ robust }
