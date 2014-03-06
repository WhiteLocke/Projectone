/* Assume argument0 is a char's object id */
var character = argument0


if ( (character).currentHP + 100 > (character).maxHP)
    argument0.currentHP = argument0.maxHP
else
    argument0.currentHP += 100
