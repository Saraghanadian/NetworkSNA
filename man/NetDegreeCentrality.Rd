\name{NetDegreeCentrality}
\alias{NetDegreeCentrality}

\title{NetDegreeCentrality
Determine NetDegreeCentrality
}
\description{
This function determines Network level degree centrality for all types of M-DC, DC-Re, RE-DC, Re-RM
}
\usage{
NetDegreeCentrality(frame , type)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{frame, type}{
frame is the dataframe that has been extracted from excel sheet.
It contains the weighted assignment matrix( values of transefered product) between two facilities
type is the type of origion and destination facilities including M-DC, DC-Re, RE-DC, Re-RM
}
}
\details{
 select type of network
 1 is Manufacturer_Distriution Center(M-DC)
 2 is distribution center_retailer(DC-Re)
 3 is retailers_Distribution Center (Re_DC)
 4 is Distribution Center_remanufacturers (DC-RM)
}
\value{
Matrix contains NL_CDout and NL_CDin for each type of network
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Sara Ghanadian
}

\examples{
#Not Run
mydata <- read_excel("Optimal_network.xlsx", sheet = 1)

# Determine NL_CD out and NL_CD in for M_DC type network

NL_DC <- NetDegreeCentrality(mydata, 1)

# 1 is Manufacturer_Distriution Center(M-DC)
# 2 is distribution center_retailer(DC-Re)
# 3 is retailers_Distribution Center (Re_DC)
# 4 is Distribution Center_remanufacturers (DC-RM)
#End(Not run)
{
  }
}

