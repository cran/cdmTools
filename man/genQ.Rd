% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/genQ.R
\name{genQ}
\alias{genQ}
\title{Generate Q-matrix}
\usage{
genQ(J, K, Kj, I = 2, min.JK = 3, max.Kcor = 1, Qid = "none", seed = NULL)
}
\arguments{
\item{J}{Number of items.}

\item{K}{Number of attributes.}

\item{Kj}{A vector specifying the number (or proportion, if summing up to 1) of items measuring 1, 2, 3, ..., attributes. The first element of the vector determines the number (or proportion) of items measuring 1 attribute, and so on. See \code{Examples}.}

\item{I}{Number of identity matrices to include in the Q-matrix (up to column permutation). The default is 2.}

\item{min.JK}{Minimum number of items measuring each attribute. It can be overwritten by \code{I}, if \code{I} is higher than \code{min.JK}. The default is 3.}

\item{max.Kcor}{Maximum allowed tetrachoric correlation among the columns to avoid overlapping (Nájera, Sorrel, de la Torre, & Abad, 2020). The default is 1.}

\item{Qid}{Assure that the generated Q-matrix is generically identifiable. It includes \code{"none"} (for no identifiability assurance), \code{"DINA"}, \code{"DINO"}, or \code{"others"} (for other CDMs identifiability). The default is \code{"none"}.}

\item{seed}{A seed for obtaining consistent results. If \code{NULL}, no seed is used. The default is \code{NULL}.}
}
\value{
\code{genQ} returns an object of class \code{genQ}.
\describe{
\item{\code{gen.Q}}{The generated Q-matrix (\code{matrix}).}
\item{\code{JK}}{Number of items measuring each attribute (\code{vector}).}
\item{\code{Kcor}}{Tetrachoric correlations among the columns (\code{matrix}).}
\item{\code{is.Qid}}{Q-matrix identifiability information (\code{list}).}
\item{\code{specifications}}{Function call specifications (\code{list}).}
}
}
\description{
Generates a Q-matrix.
The criteria from Chen, Liu, Xu, & Ying (2015) and Xu & Shang (2018) can be used to generate identifiable Q-matrices.
Only binary Q-matrix are supported so far.
Useful for simulation studies.
}
\examples{
Kj <- c(15, 10, 0, 5) # 15 one-att, 10 2-atts, 0 3-atts, and 5 four-atts items
Q <- genQ(J = 30, K = 4, Kj = Kj, Qid = "others", seed = 123)
}
\references{
Chen, Y., Liu, J., Xu, G., & Ying, Z. (2015). Statistical analysis of Q-matrix based diagnostic classification models. \emph{Journal of the American Statistical Association}, \emph{110}, 850-866. https://doi.org/10.1080/01621459.2014.934827

Nájera, P., Sorrel, M. A., de la Torre, J., & Abad, F. J. (2020). Balancing fit and parsimony to improve Q-matrix validation. \emph{British Journal of Mathematical and Statistical Psychology}. https://doi.org/10.1111/bmsp.12228

Xu, G., & Shang, Z. (2018). Identifying latent structures in restricted latent class models. \emph{Journal of the American Statistical Association}, \emph{113}, 1284-1295. https://doi.org/10.1080/01621459.2017.1340889
}
\author{
{Pablo Nájera, Universidad Pontificia Comillas}
}
