\name{BinOrdNonNor-package}
\alias{BinOrdNonNor-package}
\alias{BinOrdNonNor}
\docType{package}
\title{
Concurrent generation of binary, ordinal and continuous data 
}
\description{
This package implements a procedure for generating samples from a mix of binary, ordinal and continuous random variables with a pre-specified correlation matrix and marginal distributions based on the methodology proposed by Demirtas et al. (2012) and its extensions.

This package consists of nine functions. The function \code{\link{Fleishman.coef.NN}} computes the Fleishman coefficients for each continuous variable with pre-specified skewness and kurtosis values. The functions \code{\link{LimitforNN}} and \code{\link{LimitforONN}} return the lower and upper correlation bounds of a pairwise correlation between two continuous variables, and between a binary/ordinal variable and a continuous variable, respectively. The function \code{\link{valid.limits.BinOrdNN}} computes the lower and upper bounds for the correlation entries based on the marginal distributions of the variables. The function \code{\link{validate.target.cormat.BinOrdNN}} checks the validity of the values of pairwise correlations. The function \code{\link{IntermediateNonNor}} and \code{\link{IntermediateONN}} compute the intermediate correlations for continuous pairs, and binary/ordinal-continuous pairs, respectively. The function \code{\link{cmat.star.BinOrdNN}} assembles the intermediate correlation matrix. The engine function \code{\link{genBinOrdNN}} generates mixed data in accordance with a given correlation matrix and marginal distributions.

The key packages and functions that we call in this package include \code{GenOrd}, \code{OrdNor}, \code{BBsolve}, \code{rmvnorm}, and \code{nearPD}. 
}
\details{
\tabular{ll}{
Package: \tab BinOrdNonNor\cr
Type: \tab Package\cr
Version: \tab 1.5\cr
Date: \tab 2019-02-28\cr
License: \tab GPL-2 | GPL-3\cr
}}
\author{
Hakan Demirtas, Yue Wang, Rawan Allozi, Ran Gao

Maintainer: Ran Gao <rgao8@uic.edu>
}
\references{
Demirtas, H. and Hedeker, D. (2011). A practical way for computing approximate lower and upper correlation bounds. The American Statistician, 65(2), 104-109.

Demirtas, H. and Hedeker, D. (2016). Computing the point-biserial correlation under any underlying continuous distribution. Communications in Statistics - Simulation and Computation, 45(8), 2744-2751.

Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. Statistics in Medicine, 31(27), 3337-3346.

Demirtas, H. and Yavuz Y. (2015). Concurrent generation of ordinal and normal data. Journal of Biopharmaceutical Statistics, 25(4), 635-650.

Fleishman, A.I. (1978). A method for simulating non-normal distributions. Psychometrika, 43(4), 521-532.

Vale, C.D., and Maurelli, V.A. (1983). Simulating multivariate nonnormal distributions. Psychometrika, 48(3), 465-471.
}
