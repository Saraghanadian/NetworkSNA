

ReadMultisheets <- function(file_name ,numberOfsheets){

  library("readxl")
  library("openxlsx")
  multisheets <- lapply(1:numberOfsheets, function(i) read_excel(file_name, sheet = i))
  sheets <- getSheetNames(file_name)
  names(multisheets) <- c(sheets)
  return(multisheets)
}

