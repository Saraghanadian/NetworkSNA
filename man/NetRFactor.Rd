\name{NetRFactor}
\alias{NetRFactor}

\title{NetRFactor
  Determine NetRFactor
}
\description{
  This function determines Network level R factor( r disperse and R absorb) for all types of M-DC, DC-Re, RE-DC, Re-RM 
}
\usage{
  NetRFactor(frame)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{frame}{
    frame is the dataframe that has been extracted from excel sheet. 
    It contains the weighted assignment matrix( values of transefered product) between two facilities
  
  }
}

\value{
  Matrix contains NL_R disperse and NL_R absorb for each type of network
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
  NL_DC <- NetRFactor(mydata)
  
  #End(Not run)
  {
  }
}
