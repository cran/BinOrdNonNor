\name{IntermediateONN}
\alias{IntermediateONN}
\title{Computes the intermediate (biserial/polyserial) correlations given the point-biserial/polyserial correlations for binary/ordinal-continuous pairs prior to dichotomization/ordinalization}
\description{This function computes the intermediate correlation values of pairwise correlations between binary/ordinal and continuous variables.}
\usage{
IntermediateONN(plist, skew.vec, kurto.vec, ONNCorrMat)
}
\arguments{
  \item{plist}{A list of probability vectors corresponding to each binary/ordinal variable. The i-th element of \code{plist} is a vector of the cumulative probabilities defining the marginal distribution of the i-th component of the multivariate variables, which is binary/ordinal. If the i-th variable is binary, the i-th vector of \code{plist} will contain 1 probability value. If the i-th variable is ordinal with k categories (k > 2), the i-th vector of \code{plist} will contain (k-1) probability values. The k-th element is implicitly 1.}
  \item{skew.vec}{The skewness vector for continuous variables.}
  \item{kurto.vec}{The kurtosis vector for continuous variables.}
  \item{ONNCorrMat}{A matrix of pairwise target (point-biserial/polyserial) correlations between binary/ordinal and continuous variables. This is a submatrix of the overall correlation matrix, and it is pertinent to the binary/ordinal-continuous part. Hence, the matrix may or may not be square. Even when it is square, it may not be symmetric.}
}
\value{A pairwise correlation matrix of intermediate correlations, where rows and columns represent continuous and binary/ordinal variables, respectively.}
\references{
Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. Statistics in Medicine, 31(27), 3337-3346.

Demirtas, H. and Hedeker, D. (2016). Computing the point-biserial correlation under any underlying continuous distribution. Forthcoming in Communications in Statistics Simulation and Computation.
}
\seealso{\code{\link{IntermediateNonNor}}, \code{\link{cmat.star.BinOrdNN}}}
\examples{
no.bin <- 1
no.ord <- 2
no.NN <- 4
q <- no.bin + no.ord + no.NN
set.seed(54321)

Sigma <- diag(q)
Sigma[lower.tri(Sigma)] <- runif((q*(q-1)/2),-0.4,0.4)
Sigma <- Sigma + t(Sigma)
diag(Sigma) <- 1

marginal <- list(0.3, cumsum( c(0.30, 0.40) ), cumsum(c(0.4, 0.2, 0.3) ) )
ONNCorrMat <- Sigma[4:7, 1:3]
IntermediateONN(marginal, skew.vec=c(1,2,2,3), kurto.vec=c(2,7,25,25), ONNCorrMat)
}
