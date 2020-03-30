\name{SummaryNetDC}
\alias{SummaryNetDC}

\title{SummaryNetDC
Determine Summary of Network level degree centrality
}
\description{
This function create a dataframe contains all the Network level degree centrality  values for each type facility from alternative networks( diffrent sheets). The row names indicates the name of sheets.

}
\usage{
SummaryNetDC(list_name , type)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{list_name, type}{
list_name is the list  created based on ReadMultisheets function. It contains the weighted assignment matrix( values of transefered product) between two facilities for diffrent network designs.
type is the type of origion and destination facilities including M-DC, DC-Re, RE-DC, Re-RM
}
}
\details{
select type of network in the function:
 1 is Manufacturer_Distriution Center(M-DC)
 2 is distribution center_retailer(DC-Re)
 3 is retailers_Distribution Center (Re_DC)
 4 is Distribution Center_remanufacturers (DC-RM)
}
\value{
Matrix contains NL_CDout and NL_CDin for each type of network for alternative networks
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

list_test<-ReadMultisheets("Xvalues.xlsx" , 11)

# determine the network level degree centrality for M-DC for all network designs (Optimal and near optimals)

Alternativenetworks_NL_DC <- NetDegreeCentrality(list_test, 1)

# 1 is Manufacturer_Distriution Center(M-DC)
# 2 is distribution center_retailer(DC-Re)
# 3 is retailers_Distribution Center (Re_DC)
# 4 is Distribution Center_remanufacturers (DC-RM)

#End(Not run)
{
  }
}

