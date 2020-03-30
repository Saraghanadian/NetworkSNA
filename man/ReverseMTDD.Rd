\name{ReverseMTDD}
\alias{ReverseMTDD}

\title{ ReverseMTDD
Determine Maximum Total Degree deference (MTDD) in forward flow
}
\description{
 This function  determines MTDD for different sizes of Closed loop supply chain networks having Remanufacturers, Distribution centers, Retailers(customers) in reverse flow 
}
\usage{
ReverseMTDD(m,d,r)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{m, d,r}{
}
}
\details{
m= number of remanufacturers 
d= number of distribution centers
r= number of remanufacturers
}
\value{
Maximum Total Difference Value that can be used for scaling network level degree centrality in reverse flow
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
MTDD <-ForwardMTDD (3,10,40)
# select type of facility
# m is number of reManufacturer
# d is number of distribution centers
# r is number of retailers/ customers

}

