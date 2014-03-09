/* 

Required Params: 
scriptParams[] (argument0) - The array of parameters
numParams (argument1) - The number of items in scriptParams

scriptParams[0] (argument0[0]) - The object id of the parent menu

TODO:
add parameter for which character owns this skill list
*/

magicSubmenu = instance_create(x,y,obj_magic_submenu)

//turn off focus on other windows
with(obj_menu){
    inFocus=false
}

    //turn on focus on magic submenu
magicSubmenu.inFocus = true

//set parent id
magicSubmenu.parentID = argument0[0]
