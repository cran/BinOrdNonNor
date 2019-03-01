\name{validate.target.cormat.BinOrdNN}
\alias{validate.target.cormat.BinOrdNN}
\title{Checks the validity of the target correlation matrix
}
\description{The function checks the validity of pairwise correlations. In addition, it checks positive definiteness, symmetry, and correct dimensions.}
\usage{
validate.target.cormat.BinOrdNN(plist, skew.vec, kurto.vec, no.bin, no.ord, 
no.NN, CorrMat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{plist}{A list of probability vectors corresponding to each binary/ordinal variable. The i-th element of \code{plist} is a vector of the cumulative probabilities defining the marginal distribution of the i-th component of the multivariate variables, which is binary/ordinal. If the i-th variable is binary, the i-th vector of \code{plist} will contain 1 probability value. If the i-th variable is ordinal with k categories (k > 2), the i-th vector of \code{plist} will contain (k-1) probability values. The k-th element is implicitly 1.}
  \item{skew.vec}{The skewness vector for continuous variables.}
  \item{kurto.vec}{The kurtosis vector for continuous variables.}
  \item{no.bin}{Number of binary variables.}
  \item{no.ord}{Number of ordinal variables.}
  \item{no.NN}{Number of continuous variables.}
  \item{CorrMat}{The target correlation matrix which must be positive definite and within the valid limits.}
}
\value{In addition to being positive definite and symmetric, the values of pairwise correlations in the target correlation matrix must also fall within the limits imposed by the marginal distributions of the variables. The function ensures that the supplied correlation matrix is valid for simulation. If a violation occurs, an error message is displayed that identifies the violation. The function returns a logical value \code{TRUE} when no such violation occurs.
}
\seealso{\code{\link{valid.limits.BinOrdNN}}}
\examples{
Sigma <- diag(4)
Sigma[lower.tri(Sigma)] <- c(0.42, 0.55, 0.29, 0.37, 0.14, 0.26)
Sigma <- Sigma + t(Sigma)
diag(Sigma) <- 1

marginal <- list(0.2, c(0.4, 0.7, 0.9))

validate.target.cormat.BinOrdNN(plist=marginal, skew.vec=c(1,2), kurto.vec=c(2,7), 
                                no.bin=1, no.ord=1, no.NN=2, CorrMat=Sigma)
}
