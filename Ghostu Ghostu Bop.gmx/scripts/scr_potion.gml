/* Use a potion on the target

Params:

argument0 - obj_character to use the potion on
return - false if the item was not used, true if it was*/

/* Potions can be used on enemy or ally*/
target = argument0
if ( (target).currentHP + 100 > (target).maxHP)
    target.currentHP = target.maxHP
else
    target.currentHP += 100
    
Player.inventory[ITEM_POTION,1] -= 1
if(Player.inventory[ITEM_POTION,1] = 0)
    Player.numItems -= 1

//Maybe if we're in battle, play an animation
