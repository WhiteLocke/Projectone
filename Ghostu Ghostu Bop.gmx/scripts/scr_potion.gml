/* Use a potion on the target

Params:

argument0 - action

/* Potions can be used on enemy or ally*/

/* If not in battle, just use the potion
target = argument0.target
if ( (target).currentHP + 100 > (target).maxHP)
    target.currentHP = target.maxHP
else
    target.currentHP += 100
    
Player.inventory[ITEM_POTION,1] -= 1
if(Player.inventory[ITEM_POTION,1] = 0)
    Player.numItems -= 1

else, if we're in battle:*/

obj = instance_create(x,y,obj_battle_action_potion)
obj.action = argument0

//Start the action
obj.alarm[0] = 1
