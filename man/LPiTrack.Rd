\name{LPiTrack}
\alias{LPiTrack}

\title{
Algorithm for eye-movement signal processing
}
\description{
Implements a generic nonparametric statistical algorithm to analyze
eye-movement trajectory data.
}
\usage{
LPiTrack(xy_mat, m = c(3, 5, 15), p = 10)
}

\arguments{
  \item{xy_mat}{
A matrix with first column as \eqn{x}-coordinates and second column as
  \eqn{y}-coordinates of trajectory data.
}
\item{m}{
  A vector of three items.\cr
  \code{m[1]}: The number of orthonormal LP-transformations to implement \code{LPTime} function. \cr
  \code{m[2]}: The order of LP comoment matrix, excluding zero-order co-moments.\cr
 \code{m[3]}: Number of LP moments.
}
  \item{p}{
The lag-order for vector autoregressive model to be fitted to the data
  to extract temporal features in the data.
}
}
\details{
  This function simultaneously extracts all Temporal-Spatial-Static
  features from the trajectory data integrating \code{LPTime},
  \code{LP.comoment} and \code{LP.moment} functions.
  \code{LPTime} fits VAR model on the LP transformed
  series to capture the joint (horizontal and vertical) dynamics of the eye-movement pattern.
  \code{LP.moment} is applied on the series \eqn{r(t)} (where we define \cr
  \eqn{r^2(t) \,=\, X^2(t) + Y^2(t)}), \eqn{X(t), Y(t),} and their first
  and second order differences to capture the static
  pattern. \code{LP.comoment} is applied on the following three series:  \eqn{ (r(t), \Delta r(t))},
  \eqn{(X(t), Y(t))} and \eqn{(\Delta X(t),\Delta Y(t))} to extract
  nonparametric copula-based spatial fixation patterns.

}
\value{
A vector representation of LP features for the trajectory data, which
can be used as covariates (signatures) for subsequent prediction modelling.}
\references{
Mukhopadhyay, S. and Nandi, S. (2015). \emph{LPiTrack: Eye Movement
    Pattern Recognition Algorithm and Application to Biometric
    Identification.}
}

\author{
Shinjini Nandi
}

\seealso{
 \code{\link{LPTime}}, \code{\link{LP.moment}}, \code{\link{LP.comoment}}
}
\examples{
library(LPTime)
data(EyeTrack.sample)
head(LPiTrack(as.matrix(EyeTrack.sample), m = c(4,5, 15), p=3))
}
\keyword{ nonparametric }
\keyword{ ts }
\keyword{ robust }
