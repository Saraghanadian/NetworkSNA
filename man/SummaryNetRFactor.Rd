\name{SummaryNetRFactor}
\alias{SummaryNetRFactor}

\title{SummaryNetRFactor
Determine Summary of Network level R factor
}
\description{
This function create a dataframe contains all the Network level R factor  values for each type facility from alternative networks( diffrent sheets). The row names indicates the name of sheets.

}
\usage{
SummaryNetRFactor(list_name)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{list_name}{
list_name is the list  created based on ReadMultisheets function. It contains the weighted assignment matrix( values of transefered product) between two facilities for diffrent network designs.

}
}

\value{
Matrix contains NL_Rdisperse and NL_Rabsorb for each type of network for alternative networks
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

test_list <- ReadMultisheets("Xvalue.xlsx" , 11)

# determine the network level degree centrality for M-DC for all network designs (Optimal and near optimals)

Alternativenetworks_NL_RFactor <- NetDegreeCentrality(test_list)

#End(Not run)
{
  }
}

