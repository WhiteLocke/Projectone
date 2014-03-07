/* Required Parameters:
argument0 - the id of the menu object to destroy */

//Make sure this is a menu object
if(object_is_ancestor(argument0.object_index,obj_menu) || argument0.object_index == obj_menu){
    //Destroy our menu entries
    for(var i = 0; i < numEntries; i++){
        with(menuEntry[i])
            instance_destroy()
    }
    
    //destroy the menu
    with(argument0)
        instance_destroy()
    
        
