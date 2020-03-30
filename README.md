# Network SNA

This package offers an approach for the determination ofnetwork-level social network analysis metrics (SNA) in the Closed loop supply chains(CLSC). Network-level SNA metrics including degree centrality and reducing factor are provided to be used in evaluating alternative network designs in terms of resilience  and balance of flow the supply chain network design. 

Functions in the package allows to:

  - Execute the calculation of metrics based on weighted assignment matrix;
  - Analyze the Facility types based on network-level metrics
  - Analyze multi supply chain networks based on network-level metrics
  



A complete description of all features and  interpretation  can be found at
the link:
<Journalarticle>
  
<img src="Rplot.png" />
## Installation

You can install SNetworkSNA from github with:

``` r
install.packages("NetworkSNA")
devtools::install_github("Saraghanadian/NetworkSNA")
```

## Example with the SNA metrics

``` r
library(SNAinSCM)

# Load data ---------------------------------------------------------------------------------
data("Xvalues")
head( Xvalues)
#$Optimal
# A tibble: 590 x 3
#   From  To  Value 
# 1   1  1      0  
# 2   1  2      0   
# 3   1  3      0   
# 4   1  4      0  
# 5   1  5      0  
# 6   1  6      0   
# A tibble: 590 x 3
#$'41'
# 1   1  1      0  
# 2   1  2      0   
# 3   1  3      0   
# 4   1  4      0  
# 5   1  5      0  
# 6   1  6      0 
#...

# Define Network-level out-degree centrality,in-degree centrality for Manufacturer_Distribution Centers  for optimal and near optimal CLSC networks 
----------------------------------------------------------------------------------------


NL_DegreeCentrality <- SummaryNetDC(test_list ,1)

#        type   NL_CDout NL_CDin
#Optimal "M_DC" "0.03"   "0.44" 
#41      "M_DC" "0.28"   "0.14" 
#40      "M_DC" "0.31"   "0.17" 
#38      "M_DC" "0.31"   "0.17" 
#39      "M_DC" "0.31"   "0.17" 
#37      "M_DC" "0.31"   "0.17" 
#36      "M_DC" "0.17"   "0.17" 
#35      "M_DC" "0.17"   "0.17" 
#34      "M_DC" "0.17"   "0.44" 
#33      "M_DC" "0.17"   "0.44" 
#32      "M_DC" "0.03"   "0.17" 

# Define Network level R disperse, R absorb for Manufacturer_Distribution Centers for optimal and near optimal CLSC networks ---------------------------------------------------------------------------------------------

NL_Rfactor <- SummaryNetRFactor(test_list)

#         Nl_Rdisperse Nl_Rabsorb
# Optimal         0.69       0.73
# 41              0.68       0.62
# 40              0.71       0.65
# 38              0.72       0.65
# 39              0.71       0.67
# 37              0.70       0.67
# 36              0.68       0.67
# 35              0.63       0.67
# 34              0.71       0.72
# 33              0.71       0.72
# 32              0.68       0.73
