ocdb <- read.csv("./data-raw/OC_DB.csv", check.names = TRUE, sep=";")

usethis::use_data(ocdb, overwrite = TRUE)

rm(ocdb)
