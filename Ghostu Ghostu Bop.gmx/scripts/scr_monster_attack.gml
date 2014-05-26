/* Parameters
argument0 - the action*/






    audio_play_sound(snd_evillaugh,1,false)
    Player.party[argument0.targets[0]].currentHP -= argument0.attacker.strength;
    numbers = instance_create(Player.party[argument0.targets[0]].x,Player.party[argument0.targets[0]].y,obj_battle_damage)
    numbers.damage = true
    numbers.attack = argument0.attacker.strength
    obj_battle_controller.actionActive = false;
    argument0.attacker.currentInitiative = 0;
    argument0.attacker.actionFinished = true;


