/* Return the index in the inventory of the requested item
argument 0 - the name of the item you're searching for 
return - index into Player.inventory */

for(var i = 0; i < Player.inventory.numItems; i++){
    if(Player.inventory[i,0] = argument0)
        return i;
}

//if we get here, we didn't find the item, so return -1
return -1
