
SummaryNetRFactor <-function(list_name ){
  solutions <-list()
  for (i in 1:length(list_name)){
    my_data <- as.data.frame(list_name[[i]])
    solutions[[i]]<- NetRFactor(my_data)
  }
  summaryR <- do.call(rbind, solutions)
  rownames(summaryR) = names(list_name)

  return(summaryR)

}

