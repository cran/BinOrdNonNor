\name{LimitforNN}
\alias{LimitforNN}
\alias{Limit_forNN}
\title{Finds the feasible correlation range for a pair of continuous variables}
\description{The function computes the lower and upper correlation bounds of a pairwise correlation between two continuous variables using generate, sort, and correlate (GSC) algorithm in Demirtas and Hedeker (2011).}
\usage{
LimitforNN(skew.vec, kurto.vec)
Limit_forNN(skew.vec, kurto.vec) #Deprecated
}
\arguments{
  \item{skew.vec}{The skewness vector for continuous variables.}
  \item{kurto.vec}{The kurtosis vector for continuous variables.}
}
\value{A vector of two elements. The first element is the lower bound and the second element is the upper bound.}
\references{
Demirtas, H., Hedeker, D. (2011). A practical way for computing approximate lower and upper correlation bounds. The American Statistician, 65(2), 104-109.
}
\seealso{\code{\link{Fleishman.coef.NN}}}
\examples{
LimitforNN(skew.vec=c(1,2),kurto.vec=c(2,7))
}
