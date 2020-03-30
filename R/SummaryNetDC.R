

SummaryNetDC <- function(list_name, type){
  
  solutions <- list()
  for (i in 1:length(list_name)){
    my_data <- as.data.frame(list_name[[i]])
    solutions[[i]]<- NetDegreeCentrality(my_data,type)
  }
  summary <- do.call(rbind, solutions)
  rownames(summary) = names(list_name)
  
  return(summary)
  
  
}

