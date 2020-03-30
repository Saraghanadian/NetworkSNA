\name{ReadMultisheets}
\alias{ReadMultisheets}

\title{ ReadMultisheets
Read mulit sheets
}
\description{
Export multi sheets from excel in to R and save name of sheets in the list.
}
\usage{
ReadMultisheets(file_name ,numberOfsheets)
}

\arguments{
  \item{file_name, numberofsheets}{
file_name is thename of excel file to be imported in R. 
numberofsheets are the number of sheets required to be read from excel file.
}
}
\details{
  "readxl" and "openxlsx" R packages are required to be installed 
}
\value{
Create a list that contains all the data in multiple sheets. The name of each sheets are assigned to the related calsses(elements) in the list.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Sara Ghandian
}

\examples{
#Not Run

Optimal_test<-ReadMultisheets("OptimalResult.xlsx" , 4)

#End(Not run)

{
  }
}

