
NetRFactor <- function(frame){

  colnames(frame) <- c("From", "to", "value")
  colnames(frame) <- toupper(colnames(frame))
  my_data_subset <- subset(frame, frame[,3] != 0, select = c(1:3))
  my_data_subset1<- my_data_subset[
    with(my_data_subset, order(my_data_subset$FROM,my_data_subset$VALUE)),
    ]
  my_data_subset2 <- my_data_subset[with(my_data_subset, order(my_data_subset$TO,
                                                              my_data_subset$VALUE)), ]
  CD_out <- as.data.frame(table(my_data_subset1[,1]))
  colnames(CD_out) <- c("Facility","degree_centrality")
  SD_out<-aggregate(x= my_data_subset1$VALUE,by=list(my_data_subset1$FROM), FUN="sum")
  colnames(SD_out) <- c("Facility","strenght_centrality")
  CD_in <- as.data.frame(table(my_data_subset2[,2]))
  colnames(CD_in) <- c("Facility","degree_centrality")
  SD_in<-aggregate(x= my_data_subset2$VALUE,by=list(my_data_subset2$TO), FUN="sum")
  colnames(SD_in) <- c("Facility","strenght_centrality")


  R1 <-aggregate(x= my_data_subset1$VALUE,by=list(my_data_subset1$FROM), FUN="cumsum")
  colnames(R1) <- c("Facility","cumulativeweight")

  R2 <- aggregate(x= my_data_subset2$VALUE,by=list(my_data_subset2$TO), FUN="cumsum")
  colnames(R2) <- c("Facility","cumulativeweight")
  solution1 <- list()
  solution2 <-list()
  Rfac_out <-matrix()
  Rfac_in <- matrix()
  for (i in 1:length(R1$Facility)){
    degreevec_out <- as.vector(CD_out$degree_centrality)
    stvect_out <- as.vector(SD_out$strenght_centrality)
    maxarea_out <- (degreevec_out *stvect_out)/2
    solution1[[i]] <- as.numeric((sum(R1$cumulativeweight[[i]])*2 -max(R1$cumulativeweight[[i]]))/2)
    Rfac_out[i] <- solution1[[i]]/maxarea_out[i]
  }

  for (j in 1:length(R2$Facility)){
    degreevec_in <- as.vector(CD_in$degree_centrality)
    stvect_in <- as.vector(SD_in$strenght_centrality)
    maxarea_in <- (degreevec_in *stvect_in)/2
    solution2[[j]] <- as.numeric((sum(R2$cumulativeweight[[j]])*2 -max(R2$cumulativeweight[[j]]))/2)
    Rfac_in[j] <- solution2[[j]]/maxarea_in[j]

  }
  Rfinal_out <- ifelse(degreevec_out != 1, Rfac_out, NA)
  Nl_Rdisperse <-  round(mean(Rfinal_out,na.rm = TRUE), digits=2)
  Rfinal_in <-ifelse(degreevec_in != 1, Rfac_in, NA)
  Nl_Rabsorb <- round(mean(Rfinal_in, na.rm = TRUE), digits = 2)
  result <- cbind(Nl_Rdisperse,Nl_Rabsorb )

  return(result)

}

