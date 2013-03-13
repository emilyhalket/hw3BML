rotate <-
function(gr,dir){
  #clockwise
  if (dir == "cw"){
    gr <- t(gr)[,nrow(gr):1]
    
  }
  #counter clockwise
  else if (dir == "ccw"){
    gr <- t(gr)[ncol(gr):1, ]
    
  }
  class(gr) = "grid"
  return(gr)
}
