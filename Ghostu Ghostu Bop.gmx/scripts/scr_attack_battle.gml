/* Parameters 
argument0 - the target Character for the attack

*/

/* Who is active? */
attacker = -1
if(obj_battle_controller.allyActive > -1)
    attacker = Player.party[obj_battle_controller.allyActive]
else
    attacker = obj_battle_controller.enemy[obj_battle_controller.enemyActive]
    
target = argument0
argument0.currentHP = argument0.currentHP - 10
audio_play_sound(ff6_jump,1,false)
    
