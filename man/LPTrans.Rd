\name{LPTrans}
\alias{LPTrans}

\title{
This function computes \eqn{m} specially-designed LP orthonormal basis functions of a
  random variable
}
\description{
 Computes LP Score functions for a given random variable \eqn{X}.
}
\usage{
LPTrans(x, m)
}

\arguments{
  \item{x}{
Observation from random variable \eqn{X}.
}
  \item{m}{
The number of LP transformations to be computed.
}
}

\details{
 For random variable \eqn{X}(either discrete or continuous) construct the LP
 transformed series by Gram Schmidt orthonormalization of the powers of

  \deqn{
     \mbox{T}_{1}[X] =
     \frac{F^{\scriptsize\mbox{mid}}(X) - 0.5}{\sigma [
       F^{\scriptsize\mbox{mid}}(X)]}
   }
   where \eqn{F^{\scriptsize\mbox{mid}}(x; \, X) = F(x; X) - 0.5p(x; \,
     X), \; p(x;\, X) = \mbox{Pr}[X = x],\; F(x;\, X) = \mbox{Pr}[X \leq x]}, \cr
   and \eqn{\sigma(X)} denotes the standard deviation of the
     random variable \eqn{X}.\cr
     For \eqn{X} continuous,
     \eqn{  \mbox{T}_{j}[X] =
     \mbox{Leg}_{j}[F(X)]}, where \eqn{\mbox{Leg}_j}
     denotes jth shifted orthonormal Legendre Polynomial \eqn{
     \mbox{Leg}_j(u), \; 0 < u < 1.} Now define the UNIT LP basis
     function as follows:
     \deqn{
       \mbox{S}_{j}(u; \, X) =
     \mbox{T}_{j}[Q(u; \, X)], \;
    0 < u < 1.}

Our score functions are custom constructed (non-parametrically designed
data-adaptive score functions) for each
random variable \eqn{X} which can be discrete or continuous.

}
\value{
  A matrix of order \eqn{n \times m} where
\eqn{n} is the number of observations on \eqn{X}. Each column of the
matrix is an orthonormal LP score function.
}

\references{
 Mukhopadhyay, S. and Parzen, E. (2014). \emph{LP approach to
    statistical modeling.arXiv:1405.2601.}

Mukhopadhyay, S. and Parzen, E. (2013).\emph{ Nonlinear time series
  modeling by LPTime,nonparametric empirical learning. arXiv:1308.0642.}

Parzen, E. and Mukhopadhyay, S. (2013b).\emph{ United Statistical
  Algorithms, LP comoment,Copula Density, Nonparametric Modeling. 59th
  ISI World Statistics Congress (WSC), Hong Kong.}

}
\author{
Subhadeep Mukhopadhyay
}

\examples{
library(lattice)
#Example from Eye Trajectory data
data(EyeTrack.sample)
x.coords <- EyeTrack.sample[,1]

x.diff <- diff(x.coords) #Differenced x-coordinate series
trans.x.diff <- LPTrans(x.diff, m = 4)
head(trans.x.diff)

x.diff.std <- (x.diff - mean(x.diff))/sd(x.diff)

x.series <- cbind(x.diff.std, ts(LPTrans(x.diff, m = 4)))
colnames(x.series) <- c("Difference of X",paste("LPTrans(diff(X)) [,",1:4,"]", sep = ""))
xyplot(x.series,outer = TRUE,
       main = "Plot of differenced x-coordinates
and its LP-transformations over time"
       )
}


\keyword{ nonparametric }
\keyword{ ts }
\keyword{ algebra }
