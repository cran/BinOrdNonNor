\name{cmat.star.BinOrdNN}
\alias{cmat.star.BinOrdNN}
\title{Computes the intermediate correlation matrix
}
\description{
The function computes the correlations of intermediate multivariate normal data prior to subsequent dichotomization (for binary variables), ordinalization (for ordinal variables), and transformation (for continuous variables)
}
\usage{
cmat.star.BinOrdNN(plist, skew.vec, kurto.vec, no.bin, no.ord, no.NN, CorrMat)
}
\arguments{
  \item{plist}{A list of probability vectors corresponding to each binary/ordinal variable. The i-th element of \code{plist} is a vector of the cumulative probabilities defining the marginal distribution of the i-th component of the multivariate variables, which is binary/ordinal. If the i-th variable is binary, the i-th vector of \code{plist} will contain 1 probability value. If the i-th variable is ordinal with k categories (k > 2), the i-th vector of \code{plist} will contain (k-1) probability values. The k-th element is implicitly 1.}
  \item{skew.vec}{The skewness vector for continuous variables.}
  \item{kurto.vec}{The kurtosis vector for continuous variables.}
  \item{no.bin}{Number of binary variables.}
  \item{no.ord}{Number of ordinal variables.}
  \item{no.NN}{Number of continuous variables.}
  \item{CorrMat}{The target correlation matrix which must be positive definite and within the valid limits.}
}
\value{An intermediate correlation of size \code{(no.bin + no.ord + no.NN)*(no.bin + no.ord + no.NN)}}
\seealso{\code{\link{validate.target.cormat.BinOrdNN}}, \code{\link{IntermediateNonNor}}, \code{\link{IntermediateONN}}}
\examples{
## Not run:
no.bin <- 1
no.ord <- 2
no.NN <- 4
q <- no.bin + no.ord + no.NN
set.seed(54321)

Sigma <- diag(q)
Sigma[lower.tri(Sigma)] <- runif((q*(q-1)/2),-0.4,0.4)
Sigma <- Sigma + t(Sigma)
diag(Sigma) <- 1

marginal <- list(0.3, cumsum(c(0.30, 0.40) ), cumsum(c(0.4, 0.2, 0.3) ) )
cmat.star <- cmat.star.BinOrdNN(plist=marginal, skew.vec=c(1,2,2,3), 
kurto.vec=c(2,7,25,25),no.bin=1, no.ord=2, no.NN=4, CorrMat=Sigma) 
## End(Not run)
}
