\name{SummaryNetDC_Optimal}
\alias{SummaryNetDC_Optimal}

\title{SummaryNetDC_Optimal
Determine Summary of Network level degree centrality for one network
}
\description{
This function create a dataframe contains all the Network level degree centrality  values for each type facility from one network. The row names indicates the name of sheets.

}
\usage{
SummaryNetDC_Optimal(list_name)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{list_name}{
list_name is the list  created based on ReadMultisheets function. It contains the weighted assignment matrix( values of transefered product) between two facilities for diffrent a network including M-DC, DC-Re, RE-DC, Re-RM.
}
}

\value{
Matrix contains NL_CDout and NL_CDin for each one network
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Sara Ghanadian
}

\examples{
#Not Run
# read multi sheets

Optimal_test<-ReadMultisheets("OptimalResult.xlsx")

# Summarize the network level degree centrality for M-DC, DC-Re, Re_DC, DC-RM for optimal network

Alternativenetworks_NL_DC <- NetDegreeCentrality(Optimal_test)

#End(Not run)
{
  }
}

