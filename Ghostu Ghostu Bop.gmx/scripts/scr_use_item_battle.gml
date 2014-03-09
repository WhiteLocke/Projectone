/* Use an item in battle 

Params:
argument0[0] - index into Player.inventory of the item
argument[1] - id of the parent menu

Returns:
false if item not used, and menu backed out of
true if item used*/

itemIndex = argument0[0]
parentID = argument0[1]

/* Technically, this script should not be called if quantity = 0
    but just to be safe... */
if(Player.inventory[itemIndex,1] < 1)
    return false
    
// Select target for the item
target = scr_choose_target_battle(Player.inventory[itemIndex,0].target,parentID)

//If we backed out of the targeting menu
if(target = false)
    return false

/* TODO: For animation, does this need to be changed so that it passes all targets
 to the item script? */
//Use the item script on each target
for(var i = 0; i < array_length_1d(target); i++)
{
    script_execute(Player.inventory[itemIndex,0].script,target[i])
}

Player.inventory[itemIndex,1] -= 1
return true
