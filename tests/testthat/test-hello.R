cus <- fread("H:/OneDrive/Dokumente/Studium/FS21/R BC/Day 5/data_customer.csv")
per <- fread("H:/OneDrive/Dokumente/Studium/FS21/R BC/Day 5/data_personal.csv")

data <- merge(cus, per, by="CustomerId", all=FALSE)

test_that("min_max_Works", {
  expect_lt(ChurnProb(data,15662641),ChurnProb(data,15653251))
})
