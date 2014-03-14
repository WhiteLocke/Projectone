/* Parameters
argument0 - action */

obj = instance_create(x,y,obj_battle_action_attack)
obj.action = argument0

//Start the action
obj.alarm[0] = 1
