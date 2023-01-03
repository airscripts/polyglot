type 
  Direction = enum
    north, south, east, west

  DirectionsArray = array[0..10, Direction]
  DirectionsMatrix = array[0..4, DirectionsArray]

var directions: DirectionsMatrix
directions[0][0] = south
echo directions