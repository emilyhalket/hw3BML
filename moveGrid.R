moveGrid <- function(grid, totalTime){
  timeVec <- 1:totalTime
  for (i in 1:length(timeVec)){
    if (timeVec[i]%%2 != 0){
      for (i in 1:nrow(grid)){
        newRow <- carByCar(grid[i,], 2)
        grid[i,] <- newRow
      }  
     }
    else{
      for (j in 1:ncol(grid)){
        revCol <- rev(grid[,j])
        altCol <- carByCar(revCol, 3)
        newCol <- rev(altCol)
        grid[,j] <- newCol
      }
    
   }
  }
  return(grid)
}