moveCar <-
function(gr,time) {
  tvals <- c(1:time)
  #create data frame to hold information
  velocity <- rep(0,time)
  blocked <-rep(0,time)
  carMoves <- data.frame(time = tvals, velocity = velocity, blocked = blocked)
  for (i in 1:length(tvals)){
    if (tvals[i] %% 2 != 0) { #if t is odd
      car <- 2
      gr <- makeMoves(gr, car)
      carMoves$velocity[i] <- as.numeric(attributes(gr)[[3]])
      carMoves$blocked[i] <-as.numeric(attributes(gr)[[4]])
    }
    else{ 
      #if t is even
      car <- 3
      #need to rotate grid so that we can make blue move "right
      gr <- rotate(gr,"cw")
      gr <- makeMoves(gr,car)
      #need to rotate grid back?
      carMoves$velocity[i] <- as.numeric(attributes(gr)[[3]])
      carMoves$blocked[i] <-as.numeric(attributes(gr)[[4]])
      gr <- rotate(gr, "ccw")
    }
  plot(gr)
  }
  print(gr)
  return(carMoves)
}
