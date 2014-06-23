/* tile_free
   checks if the tile is free of solid objects
   takes an x and y (which should be a multiple of 32) tile location */


with(all){
    if (x == argument0) && (y == argument1){
        if solid{
          return false
          }
    }
}

return true  

