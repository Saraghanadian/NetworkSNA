\name{ForwardMTDD}
\alias{ForwardMTDD}

\title{ ForwardMTDD
Determine Maximum Total Degree deference (MTDD) in forward flow
}
\description{
 This function  determines MTDD for different sizes of supply chain networks having Manufacturers, Distribution centers, Retailers(customers) in forward flow
}
\usage{
ForwardMTDD(m,d,r)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{m, d,r}{
}
}
\details{
m= number of manufacturers
d= number of distribution centers
r= number of remanufacturers
}
\value{
Maximum Total Difference Value that can be used for scaling network level degree centrality in forward flow
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Sara Ghanadian
}

\examples{
# Not Run:
# Determine MTDD in Forward flow
MTDD <-ForwardMTDD (5,10,50)
# select type of facility
# m is number of Manufacturer
# d is number of distribution centers
# r is number of retailers/ customers

}

