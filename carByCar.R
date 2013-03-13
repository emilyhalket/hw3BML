carByCar <- function (row, carValue){
  .C("carCmove", row = as.numeric(row), as.integer(length(row)), as.integer(carValue))$row
}