\name{valid.limits.BinOrdNN}
\alias{valid.limits.BinOrdNN}
\title{Computes the lower and upper bounds of correlation in the form of two matrices
}
\description{The function computes the lower and upper bounds for the correlation entries based on the marginal distributions of the variables.}
\usage{
valid.limits.BinOrdNN(plist, skew.vec, kurto.vec, no.bin, no.ord, no.NN)
}
\arguments{
  \item{plist}{A list of probability vectors corresponding to each binary/ordinal variable. The i-th element of \code{plist} is a vector of the cumulative probabilities defining the marginal distribution of the i-th component of the multivariate variables, which is binary/ordinal. If the i-th variable is binary, the i-th vector of \code{plist} will contain 1 probability value. If the i-th variable is ordinal with k categories (k > 2), the i-th vector of \code{plist} will contain (k-1) probability values. The k-th element is implicitly 1.}
  \item{skew.vec}{The skewness vector for continuous variables.}
  \item{kurto.vec}{The kurtosis vector for continuous variables.}
  \item{no.bin}{Number of binary variables.}
  \item{no.ord}{Number of ordinal variables.}
  \item{no.NN}{Number of continuous variables.}
}
\value{A list of two matrices. The one named lower contains the lower bounds and the other named upper contains the upper bounds of the feasible correlations.}
\seealso{\code{\link{Limit_forNN}}, \code{\link{Limit_forONN}}}
\examples{
marginal <- list(0.2, c(0.4, 0.7, 0.9))
valid.limits.BinOrdNN(plist=marginal, skew.vec=c(1,2), kurto.vec=c(2,7), 
                      no.bin=1, no.ord=1, no.NN=2)
}