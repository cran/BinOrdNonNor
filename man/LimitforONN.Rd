\name{LimitforONN}
\alias{LimitforONN}
\alias{Limit_forONN}
\title{Finds the feasible correlation range for a pair of binary/ordinal and continuous variables}
\description{The function computes the lower and upper correlation bounds of a pairwise correlation between a binary/ordinal variable and a continuous variable using GSC algorithm in Demirtas and Hedeker (2011).}
\usage{
LimitforONN(pvec1, skew1, kurto1)
Limit_forONN(pvec1, skew1, kurto1) #Deprecated
}
\arguments{
  \item{pvec1}{A vector of the cumulative probabilities defining the marginal distribution for the binary/ordinal variable of the pair. If the variable is binary, the probability vector will contain only 1 probability value. If the variable is ordinal with k categories (k > 2), the probability vector will contain (k-1) values. The k-th element is implicitly 1. }
  \item{skew1}{The skewness value for continuous variable of the pair.}
  \item{kurto1}{The kurtosis value for continuous variable of the pair.}
}
\value{A vector of two elements. The first element is the lower correlation bound and the second element is the upper correlation bound.}
\references{
Demirtas, H., Hedeker, D. (2011). A practical way for computing approximate lower and upper correlation bounds. The American Statistician, 65(2), 104-109.
}
\seealso{\code{\link{Fleishman.coef.NN}}}
\examples{
LimitforONN(pvec1=c(0.2, 0.5), skew1=1, kurto1=2)
}
