createGrid <-
function(r,c,p){
  
  grSize = r*c
  numCars = p*r*c
  gr <- structure(matrix(0, nrow = r,ncol = c), class = "grid")
  carPos = sample(1:grSize, numCars)
  carColor = sample(c(2, 3), numCars, replace = TRUE, prob = c(.5,.5))
  gr[carPos] = carColor
  gr

  return(gr)
}
