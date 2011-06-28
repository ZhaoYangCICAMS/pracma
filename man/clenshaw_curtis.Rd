\name{clenshaw_curtis}
\alias{clenshaw_curtis}
\title{
  Clenshaw-Curtis Quadrature Formula
}
\description{
  Clenshaw-Curtis Quadrature Formula
}
\usage{
clenshaw_curtis(f, a = -1, b = 1, n = 32, ...)
}
\arguments{
  \item{f}{function, the integrand, without singularities.}
  \item{a, b}{lower and upper limit of the integral; must be finite.}
  \item{n}{Number of Chebyshev nodes to account for.}
  \item{\ldots}{Additional parameters to be passed to the function}
}
\details{
  Clenshaw-Curtis quadrature is based on sampling the integrand on
  Chebyshev points, an operation that can be implemented using the
  Fast Fourier Transform.
}
\value{
  Numerical scalar, the value of the integral.
}
\references{
  Trefethen, L. N. (2008). Is Gauss Quadrature Better Than Clenshaw-Curtis?.
  \url{http://www.comlab.ox.ac.uk/nick.trefethen/CC.pdf}.
}
\seealso{
\code{\link{gaussLegendre}}, \code{\link{gauss_kronrod}}
}
\examples{
##  Quadrature with Chebyshev nodes and weights
f <- function(x) sin(x+cos(10*exp(x))/3)
\dontrun{ezplot(f, -1, 1, fill = TRUE)}
cc <- clenshaw_curtis(f, n = 64)  #=>  0.0325036517151 , true error > 1.3e-10
}
\keyword{ math }