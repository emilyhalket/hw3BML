makeMoves <-
function(gr,car){
  carMvmt <- 0
  numBlocked <- 0
  numCars = length(which(gr[,]==car))
  for (i in 1:nrow(gr)) {  
    irow = gr[i,]
    Moved = 0
    Count = 1
    
    while(Count > 0 & length(which(irow == car)) !=0){
      #Note that this stops the while loop if there are no cars left to move
      #Line below asks which current position has a CarVal, and which position after has a 0
      
      moveNow = which(irow == car & c(irow[-1],irow[1]) == 0)
      
      #For dealing with wrap around, if any of the cars that want to move are in the last position, go into this loop
      if(any(moveNow == length(irow))){
        #This takes away the one that wants to be at the end, moves all the rest, and then moves the last one.
        moveNow = moveNow[-which(moveNow == length(irow))]
        irow[moveNow+1] = 4
        irow[moveNow] = 0
        irow[1] = 4
        irow[length(irow)] = 0
        if(length(moveNow) ==0){
          Count = 1
        }else{
          Count = length(moveNow)+1
        }
      }else{
        #If there wasn't a wrap around issue, just keep going
        irow[moveNow+1] = 4
        irow[moveNow] = 0
        Count = length(moveNow)
      }
      #Update Moved, and continue the loop
      
      
      Moved = Moved +Count
    }
    carMvmt <- carMvmt + sum(irow[]==4)
    
    
    irow[irow ==4] = car
    gr[i,] = irow
  }
  numBlocked <- (numCars - carMvmt) 
  attr(gr, "moved") <- carMvmt
  attr(gr, "blocked") <- numBlocked
  class(gr) = "grid"
  return(gr)
}
