plot.grid <-
function (grid){
  #rotate the grid to use in function
  rotGr <- rotate(grid, "cw")
  image(rotGr, col = c("white", "red", "blue"))
  #uses image to plot 0s in white, 2s in red, 3s in blue
}
