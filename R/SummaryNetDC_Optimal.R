
# Network level degree centraility for facility types
# The list_name is the name of list saved from ReadMultisheets() function

SummaryNetDC_Optimal <- function(list_name){

  solutions <- list()
  for (i in 1:length(list_name)){
    my_data <- as.data.frame(list_name[[i]])
    solutions[[i]]<- NetDegreeCentrality(my_data,i)
  }
  summary <- do.call(rbind, solutions)
  return(summary)
}



