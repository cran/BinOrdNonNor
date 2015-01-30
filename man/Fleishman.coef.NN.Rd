\name{Fleishman.coef.NN}
\alias{Fleishman.coef.NN}
\title{Computes the Fleishman coefficients for each continuous variable}
\description{
The function checks whether the skewness and kurtosis parameters violates the universal equality given in Demirtas, Hedeker, Mermelstein (2012) and computes the Fleishman coefficients for each continuous variable with pre-specified skewness and kurtosis values by solving the Fleishman's polynomial equations using \code{BBsolve} function in \code{BB} package.
}
\usage{
Fleishman.coef.NN(skew.vec, kurto.vec)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{skew.vec}{The skewness vector for continuous variables.}
  \item{kurto.vec}{The kurtosis vector for continuous variables.}
}
\value{An matrix with four columns corresponding to the four Fleishman coefficients, and number of rows corresponding to number of continuous variables. The i-th row contains the estimates of the four Fleishman coefficients a, b, c and d for the i-th continuous variable with i-th pre-specified skewness and kurtosis values.}
\references{
Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. Statistics in Medicine, 31(27), 3337-3346.

Fleishman, A.I. (1978). A method for simulating non-normal distributions. Psychometrika, 43(4), 521-532.
}
\examples{
# Consider four continuous variables, which come from
# Exp(1),Beta(4,4),Beta(4,2) and Gamma(10,10), respectively.
# Skewness and kurtosis values of these variables are as follows:

skew.vec <- c(2,0,-0.4677,0.6325)
kurto.vec <- c(6,-0.5455,-0.3750,0.6)
coef.est <- Fleishman.coef.NN(skew.vec, kurto.vec)
}
