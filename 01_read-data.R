library(tidyverse)
library(RODBC)
library(data.table)

read_xlsb <- function(x) {
  wb <- x
  con <- odbcConnectExcel2007(wb)
  a <- sqlTables(con)
  sheet <- a$TABLE_NAME[1]
  dado <- sqlFetch(con, sheet, as.is = c(TRUE,TRUE,TRUE,TRUE))
  odbcCloseAll()
  return (dado)
}


# Operação demorada a seguir:

DT <- list.files("data/", pattern="*.xlsb", full.names=TRUE) %>% 
      lapply(read_xlsb) %>% 
      rbindlist(fill = TRUE)

save.image()