/* Choose a target for an action

Params:
argument0[0] - a TARGET_ constant representing the allowable targets for this action
argument0[1] - id of parent menu
argument0[2] - script (action) to be executed

Returns:
target[] - an array of obj_character objects for this action*/

obj = instance_create(0,0,obj_battle_target_selector)
obj.parentID = argument0[1]
obj.targetAllowable = argument0[0]
obj.script = argument0[2]
switch(argument0[0]){
    case TARGET_ANY_ONE_DEFAULT_ALLY:
    case TARGET_ALLY_ONE:
    case TARGET_ANY_GROUPORONE_DEFAULT_ALLY:
        obj.allySelected = true
        break
        
    case TARGET_ANY_ONE_DEFAULT_ENEMY:
    case TARGET_ENEMY_ONE:
    case TARGET_ANY_GROUPORONE_DEFAULT_ENEMY:
        obj.enemySelected = true
        break
    
    case TARGET_ANY_GROUP_DEFAULT_ENEMY:
    case TARGET_ENEMY_ALL:
        obj.enemySelected = true
        obj.groupSelected = true
        break
    
    case TARGET_ANY_GROUP_DEFAULT_ALLY:
    case TARGET_ALLY_ALL:
        obj.allySelected = true
        obj.groupSelected = true
        break
}

obj.defaultSet = true
    


