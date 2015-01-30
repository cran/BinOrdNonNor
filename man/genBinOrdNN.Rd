\name{genBinOrdNN}
\alias{genBinOrdNN}
\title{Generates a data set with binary, ordinal and continuous variables
}
\description{The function simulates a sample of size \code{n} from a multivariate binary, ordinal and continuous variables with intermediate correlation matrix \code{cmat.star}, and pre-specified marginal distributions.
}
\usage{
genBinOrdNN(n, plist, mean.vec, var.vec, skew.vec, kurto.vec, no.bin, no.ord, 
no.NN, cmat.star)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{Number of rows.}
  \item{plist}{A list of probability vectors corresponding to each binary/ordinal variable. The i-th element of \code{plist} is a vector of the cumulative probabilities defining the marginal distribution of the i-th component of the multivariate variables, which is binary/ordinal. If the i-th variable is binary, the i-th vector of \code{plist} will contain 1 probability value. If the i-th variable is ordinal with k categories (k > 2), the i-th vector of \code{plist} will contain (k-1) probability values. The k-th element is implicitly 1.}
  \item{mean.vec}{Mean vector for continuous variables.}
  \item{var.vec}{Variance vector for continuous variables}
  \item{skew.vec}{The skewness vector for continuous variables.}
  \item{kurto.vec}{The kurtosis vector for continuous variables.}
  \item{no.bin}{Number of binary variables.}
  \item{no.ord}{Number of ordinal variables.}
  \item{no.NN}{Number of continuous variables.}
  \item{cmat.star}{The intermediate correlation matrix obtained from \code{\link{cmat.star.BinOrdNN}} function.}
}
\value{A matrix of size \code{n*(no.bin + no.ord + no.NN)}, of which the first \code{no.bin} columns are binary variables, the next \code{no.ord} columns are ordinal variables, and the last \code{no.NN} columns are continuous variables.}
\seealso{\code{\link{cmat.star.BinOrdNN}}, \code{\link{Fleishman.coef.NN}}}
\references{
Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. Statistics in Medicine, 31(27), 3337-3346.

Demirtas, H., Yavuz Y. (2015). Concurrent generation of ordinal and normal data. Journal of Biopharmaceutical Statistics, in press.

Vale, C.D., and Maurelli, V.A. (1983). Simulating multivariate nonnormal distributions. Psychometrika, 48(3), 465-471.
}
\examples{
## Not run:
set.seed(54321)
no.bin <- 1
no.ord <- 1
no.NN <- 4
q <- no.bin + no.ord + no.NN

marginal <- list(0.4, cumsum(c(0.4, 0.2, 0.3)))

skewness.vec <- c(2,0,-0.4677,0.6325)
kurtosis.vec <- c(6,-0.5455,-0.3750,0.6)

corr.mat <- matrix(c(1.0,-0.3,-0.3,-0.3,-0.3,-0.3,
                    -0.3, 1.0,-0.3,-0.3,-0.3,-0.3,
                    -0.3,-0.3, 1.0, 0.4, 0.5, 0.6,
                    -0.3,-0.3, 0.4, 1.0, 0.7, 0.8,
                    -0.3,-0.3, 0.5, 0.7, 1.0, 0.9,
                    -0.3,-0.3, 0.6, 0.8, 0.9, 1.0),
                    q,byrow=TRUE)

corr.mat.star <- cmat.star.BinOrdNN(plist=marginal, skew.vec=skewness.vec, 
kurto.vec=kurtosis.vec, no.bin=1, no.ord=1, no.NN=4, CorrMat=corr.mat)

sim.data <- genBinOrdNN(n=100000, plist=marginal, mean.vec=c(2,3,4,5), 
var.vec=c(3,5,10,20), skew.vec=skewness.vec, kurto.vec=kurtosis.vec,
no.bin=1, no.ord=1, no.NN=4, cmat.star=corr.mat.star) 

## End(Not run)
}