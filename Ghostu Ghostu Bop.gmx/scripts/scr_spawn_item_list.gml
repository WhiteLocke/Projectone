/* 
Required Params: 
scriptParams[] (argument0) - The array of parameters
numParams (argument1) - The number of items in scriptParams

scriptParams[0] (argument0[0]) - The object id of the parent menu

*/

submenu = instance_create(x,y,obj_item_submenu)

//turn off focus on other windows
with(obj_menu){
    inFocus=false
}

    //turn on focus on magic submenu
submenu.inFocus = true

//set parent id
submenu.parentID = argument0
