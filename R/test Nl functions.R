
# test Nl functions

Optimal_test<-ReadMultisheets("OptimalResult.xlsx" , 4)

NL_DegreeCentrality <- SummaryNetDC_Optimal(Optimal_test)
NL_Rfactor <- SummaryNetRFactor(Optimal_test)

Xvalues <- ReadMultisheets("Xvalue.xlsx" , 11)

NL_DegreeCentrality <- SummaryNetDC(Xvalues ,1)

NL_Rfactor <- SummaryNetRFactor(Xvalues)

mydata <- read_excel("Optimal_network.xlsx", sheet = 1)
NL_DC <- NetDegreeCentrality(mydata, 1)
NL_R <- NetRFactor(mydata)
