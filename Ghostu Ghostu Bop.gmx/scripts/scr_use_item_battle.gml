/* Use an item in battle 

Params:
argument0[0] - index into Player.inventory of the item
argument[1] - id of the parent menu

Returns:
false if item not used, and menu backed out of
true if item used*/

itemIndex = argument0[0]
parentID = argument0[1]

    
scr_choose_target_battle(Player.inventory[itemIndex,0].target,parentID,Player.inventory[itemIndex,0].script)

