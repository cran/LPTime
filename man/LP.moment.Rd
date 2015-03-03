\name{LP.moment}
\alias{LP.moment}
\alias{LP.comoment}

\title{
Finds LP moments of a random variable or  comoments of two random variables
}
\description{
  Evaluates \eqn{m} LP moments of a random variable. \cr
  Estimates LP-comoment matrix of order \eqn{m \times m} between \eqn{X}
and \eqn{Y} , i.e., covariance between the LP
transformations of \eqn{X} and \eqn{Y}; where the random variables could be discrete or continuous.
}
\usage{
LP.moment(x, m)
LP.comoment(x, y,zero.order = TRUE, m)
}

\arguments{
  \item{x}{
The observations on the variable \eqn{X}.
}
\item{y}{
The observations on the variable \eqn{Y}.
}
\item{zero.order}{
  Logical argument set to TRUE if zero-order LP comoments are required.
  }

\item{m}{
  The number of LP moments to be found using \code{LP.moment};
  or \cr
  The order of LP - comoment matrix.
}
}
\details{
 LP moments of a general random variable (discrete or continuous) is defined as

 \deqn{
 \mbox{LP}[j;\, X] = \mbox{LP}[j, 0; X, X] = \mbox{E}[X \; T_{j}(X; X)].
}

LP comoments are the cross-covariance between higher-order orthonormal LP
score functions \eqn{T_j(X; X)} and \eqn{T_k(Y ; Y )}
\deqn{
  \mbox{LP}[j, k; X, Y ] = \mbox{E}[T_j(X; X)\,T_k(Y ; Y )].
  }
  Zero-order LP-comoments are defined as
  \deqn{
    \mbox{LP}[j, 0; X, Y] = \mbox{E}[T_j(X; X)\,Y],
  }and
  \deqn{
    \mbox{LP}[0, k; X, Y] = \mbox{E}[X\, T_k(Y; Y)].
  }
  }
\value{
  A vector of  LP moments. \cr
  A matrix of LP co-moments between X and Y.
  }
  \references{
    Mukhopadhyay S. and Parzen E. (2014). \emph{LP approach to
      statistical modeling.arXiv:1405.2601.}

    Parzen E. and Mukhopadhyay S. (2013a). \emph{LP Mixed Data
      Science:Outline of Theory. arXiv:1311.0562.
      }

}
\author{
Subhadeep Mukhopadhyay
}
\seealso{
 \code{\link{LPTrans}}
}
\examples{
xdata <- rnorm(100)
head(LP.moment(xdata, m =4))

require(stats)
data(faithful)
head(LP.comoment(faithful$eruptions,faithful$waiting,m=4))
}
\keyword{ univar }
\keyword{ nonparametric }

