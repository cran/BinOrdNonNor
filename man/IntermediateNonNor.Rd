\name{IntermediateNonNor}
\alias{IntermediateNonNor}
\title{Computes the intermediate correlations for all continuous pairs}
\description{The function computes the intermediate correlation values of pairwise correlations between continuous variables.}
\usage{
IntermediateNonNor(skew.vec, kurto.vec, cormat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{skew.vec}{The skewness vector for continuous variables.}
  \item{kurto.vec}{The kurtosis vector for continuous variables.}
  \item{cormat}{A matrix of pairwise target correlation between continuous variables. It is a symmetric square matrix with diagonal elements being 1.}
}
\value{A pairwise correlation matrix of intermediate correlation for continuous variables.
}
\references{
Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. Statistics in Medicine, 31(27), 3337-3346.

Vale, C.D., and Maurelli, V.A.(1983). Simulating multivariate nonnormal distributions. Psychometrika, 48(3), 465-471.
}
\seealso{\code{\link{IntermediateONN}}, \code{\link{cmat.star.BinOrdNN}}}
\examples{
IntermediateNonNor(skew.vec=c(1,2), kurto.vec=c(2, 7), 
                   cormat=matrix(c(1,-0.47,-0.47,1),2,2))
}
