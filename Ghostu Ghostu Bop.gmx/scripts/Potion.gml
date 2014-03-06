/* Assume argument0 is a player's object id */



if ( argument0.currentHP + 100 > argument0.maxHP)
    argument0.currentHP = argument0.maxHP
else
    argument0.currentHP += 100
