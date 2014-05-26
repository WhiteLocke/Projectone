/* Choose a target for an action

argument0[0] - a TARGET_ constant representing the allowable targets for this action
argument0[1] - id of parent menu
argument0[2] - script (action) to be executed

Returns:
target[] - an array of obj_character objects for this action*/

obj = argument1
obj.targetAllowable = argument0
obj.script = argument2
switch(argument0){
    case TARGET_ANY_ONE_DEFAULT_ALLY:
    case TARGET_ALLY_ONE:
    case TARGET_ANY_GROUPORONE_DEFAULT_ALLY:
        obj.allySelected = true
        break
        
    case TARGET_ANY_ONE_DEFAULT_ENEMY:
    case TARGET_ENEMY_ONE:
    case TARGET_ANY_GROUPORONE_DEFAULT_ENEMY:
        randomize();
        argument1.targets[0] = irandom(Player.numPartyMembers -1);
        obj.numTargets = 1;
        script_execute(obj.script,obj)
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
