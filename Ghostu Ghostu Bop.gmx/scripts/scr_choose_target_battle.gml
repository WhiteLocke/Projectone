/* Choose a target for an action

Params:
argument0 - a TARGET_ constant representing the allowable targets for this action
argument1 - id of parent menu

Returns:
target[] - an array of obj_character objects for this action
*/

obj = instance_create(0,0,obj_battle_target_selector)
obj.parentID = argument1
obj.targetAllowable = argument0
switch(argument0){
    case TARGET_ANY_ONE_DEFAULT_ALLY:
    case TARGET_ANY_GROUP_DEFAULT_ALLY:
    case TARGET_ALLY_ONE:
    case TARGET_ALLY_ALL:
    case TARGET_ANY_GROUPORONE_DEFAULT_ALLY:
        obj.allySelected = true
        break
}

obj.defaultSet = true
    

