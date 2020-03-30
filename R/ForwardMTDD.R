
ForwardMTDD <- function(m,d, r){
  numb_row <- nargs()
  max_MTDD <- matrix(NA, nrow =  numb_row , ncol = 2)
  dimnames(max_MTDD) <- list( c("M","DC", "Re"),c("MTDD out_degree","MTDD in_degree"))
  max_MTDD [1,1] <- (d-1)*(m-1)
  max_MTDD [1,2] <- NA
  max_MTDD [2,1] <- (d-1)*(r-d)
  max_MTDD [2,2] <- (d-1)*(m-1)
  max_MTDD [3,1] <- NA
  max_MTDD [3,2] <- (d-1)*(r-1)
  return(max_MTDD)

}




