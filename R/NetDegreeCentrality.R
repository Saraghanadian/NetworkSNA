NetDegreeCentrality <- function(frame, type){

  colnames(frame) <- c("From", "to", "value")
  colnames(frame) <- toupper(colnames(frame))
  my_data_subset <- subset(frame, frame[,3] != 0, select = c(1:3))
  my_data_subset<- my_data_subset[
    with(my_data_subset, order(my_data_subset$FROM,my_data_subset$VALUE)),
    ]
  CD_out <- as.data.frame(table(my_data_subset[,1]))
  colnames(CD_out) <- c("Facility","degree_centrality")
  CD_in<- as.data.frame(table(my_data_subset[,2]))
  colnames(CD_in) <- c("Facility","degree_centrality")

  degreevec_out <- as.vector(CD_out$degree_centrality)
  degreevec_in <- as.vector(CD_in$degree_centrality)

  nominator_out  <- max(CD_out$degree_centrality)* length(CD_out$degree_centrality)- sum(CD_out$degree_centrality)
  nominator_in <- max(CD_in$degree_centrality)* length(CD_in$degree_centrality)- sum(CD_in$degree_centrality)

  if ( type == 1 ){
    type = "M_DC"
    m <- nrow(CD_out)
    d <- nrow(CD_in)
    NL_CDout <-  ifelse(nominator_out!=0, round(nominator_out/ ((d-1)*(m-1)), digits=2), NA)
    NL_CDin <-   ifelse(nominator_in!=0, round(nominator_in /((d-1)*(m-1)),digits=2), NA)
  }

  else if (type == 2 ){
    type = "DC_Re"
    d <- nrow(CD_out)
    r <- nrow(CD_in)
    NL_CDout <-  ifelse(nominator_out!=0, round(nominator_out/((d-1)*(r-d)), digits=2) , NA)
    NL_CDin <-   ifelse(nominator_in !=0, round(nominator_in/((d-1)*(r-1)), digits=2) , NA)
  }

  else if (type == 3 ){
    type = "Re_DC"
    d <- nrow(CD_out)
    r <- nrow(CD_in)
    NL_CDout <-  ifelse(nominator_out!=0, round(nominator_out/((d-1)*(r-1)), digits=2) , NA)
    NL_CDin <-   ifelse(nominator_in !=0, round(nominator_in/(r*(d-1)), digits=2) , NA)
  }
  else if (type == 4 ){
    type = "DC_RM"
    d <- nrow(CD_out)
    m <- nrow(CD_in)
    NL_CDout <-  ifelse(nominator_out!=0, round(nominator_out/(m*(d-1)), digits=2) , NA)
    NL_CDin <-   ifelse(nominator_in !=0, round(nominator_in/(d*(m-1)), digits=2) , NA)
  }
  else  {
    print("type is not correct")
  }
  result = cbind(type, NL_CDout,NL_CDin)
  return(result)
}


