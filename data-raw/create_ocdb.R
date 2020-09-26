ocdb <- read.csv("./data-raw/OC_DB.csv", check.names = TRUE, sep=";")

ocdb$FECHA_INICIO_TAREA <- as.Date(ocdb$FECHA_INICIO_TAREA,format="%d/%m/%Y %H:%M")
ocdb$FECHA_CIERRE_TAREA <- as.Date(ocdb$FECHA_CIERRE_TAREA,format="%d/%m/%Y %H:%M")
ocdb$FECHA_INICIO_TAREA_PROGRAMADA <- as.Date(ocdb$FECHA_INICIO_TAREA_PROGRAMADA,format="%d/%m/%Y %H:%M")
ocdb$FECHA_CIERRE_TAREA_PROGRAMADA <- as.Date(ocdb$FECHA_CIERRE_TAREA_PROGRAMADA,format="%d/%m/%Y %H:%M")

usethis::use_data(ocdb, overwrite = TRUE)

rm(ocdb)
