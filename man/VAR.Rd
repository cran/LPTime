\name{VAR}
\alias{VAR}

\title{
Estimates a Vector Autoregressive model of order \eqn{p}.
}
\description{
 Estimation of a Vector Autoregressive model (VAR) by computing OLS per equation.
}
\usage{
VAR(y, p = 1, exogen = NULL)
}

\arguments{
  \item{y}{
Endogenous variable for the VAR model.
}
  \item{p}{
lag-order for the autoregressive model.
}
  \item{exogen}{
Exogenous variable for the VAR model.
}
}
\details{
 Estimates a VAR by OLS per equation. The model is of the following
  form

  \deqn{
    \bold{y}_t = A_1 \bold{y}_{t-1} + \ldots + A_p \bold{y}_{t-p} +
    CD_t + \bold{u}_t
  }

  where \eqn{\bold{y}_t} is a \eqn{K \times 1} vector of endogenous
  variables and \eqn{u_t} assigns a spherical disturbance term of the
  same dimension. The coefficient matrices \eqn{A_1, \ldots, A_p} are of
  dimension \eqn{K \times K}.
  No seasonality or trend term can be included in the model.
}
\value{
A matrix of coefficients from fitting the VAR model.
}
\references{
Wei, William W.S. (2006). \emph{Time Series Analysis - Univariate and
  Multivariate Methods}

Brockwell, P.J. and Davis, R.A. (1996). \emph{Introduction to Time
  Series and Forecasting , Second Edition, Springer, New York}
}
\author{
Shinjini Nandi
}
\seealso{
\code{\link{LPTime}}
}
\examples{
library(LPTime)
data(EyeTrack.sample)
head( VAR(y = EyeTrack.sample, p = 2))
}
\keyword{ regression }
\keyword{ ts }
\keyword{ multivariate }
