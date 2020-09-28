context('plotocanalista runs without errors, the input data has the rigth size and returns a ggplot object')

setwd("/home/drivera/Documentos/conchangeordr")

OC <- load('data/ocdb.rda')

test_that("plotocanalista runs without errors", {
  expect_silent(plot.oc.analista(ocdb,'2020-04-01','2020-04-30'))
})

test_that("Data frame has 21 colummns", {
  expect_equal(length(colnames(ocdb)),21)
})

test_that("Function Returns a gg, ggplot class",{
  expect_equal(class(plot.oc.analista(ocdb,'2020-04-01','2020-04-30')),c("gg","ggplot"))
})
