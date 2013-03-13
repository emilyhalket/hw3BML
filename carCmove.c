/* 
.C("carByCar", as.numeric(row_vector), as.integer(length(row_vector)), as.integer(carVal))
*/

void
carCmove(double *Row, int *len, int *carVal)
{
  int i;
  int length = *len;
  int numSpot = length - 1; // for C we start at 0 so we need to re work index
  int car = *carVal;
  
  if (Row[numSpot] == car && Row[0] == 0) // check if last spot is car & first spot is 0
     {Row[numSpot] = 0; // set last spot to 0
      Row[0] = 4; // ser first sport to car val
     }
  
  for (i=0; i < length; i++){ // loop from i = 0 to numSpot -1
  
    if (Row[numSpot-i] == car && Row[numSpot-(i-1)]==0){
      Row[numSpot-i] = 0;
      Row[numSpot-(i-1)] = 4;
    }
   }
  
  if (Row[numSpot] == car && Row[0] == 0) // check if last spot is car & first spot is 0
     {Row[numSpot] = 0; // set last spot to 0
      Row[0] = 4; // ser first sport to car val
     }
  
  for (i=0; i < length; i++){ // loop from i = 0 to numSpot -1
  
    if (Row[numSpot-i] == car && Row[numSpot-(i-1)]==0){
      Row[numSpot-i] = 0;
      Row[numSpot-(i-1)] = 4;
    }
  }
 
 for(i = 0; i < length; i++){
   if (Row[i] == 4){
     Row[i] = car;
   }
 }
 
}