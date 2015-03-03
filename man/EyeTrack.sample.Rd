\name{EyeTrack.sample}
\alias{EyeTrack.sample}
\docType{data}
\title{
EyeTrack.sample: Coordinates of eye-trajectory
}
\description{
A matrix with first column as \eqn{x} coordinates and second column as \eqn{y}
coordinates of the random eye-movements of a person to study an object.
}
\usage{data("EyeTrack.sample")}
\format{
  The format is:
 chr "EyeTrack.sample"
}
\details{
A matrix of dimension \eqn{8743 \times 2}
}
\examples{
library(lattice)
data(EyeTrack.sample)

greentranslucent <- rgb(0,100,0,50,maxColorValue=255)
xyplot(y~x,data = data.frame(EyeTrack.sample),col=greentranslucent, pch=16,
     main = "Eye-trajectory",xlab = "X", ylab = "Y",
     sub = "Spatial fixation regions highlighted")

}
\keyword{datasets}
