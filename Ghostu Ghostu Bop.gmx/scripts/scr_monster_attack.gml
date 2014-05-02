/* Parameters
argument0 - the action*/

audio_play_sound(snd_evillaugh,1,false)
Player.party[argument0.targets[0]].currentHP -= argument0.attacker.strength;
obj_battle_controller.actionActive = false;
argument0.attacker.currentInitiative = 0;
argument0.attacker.actionFinished = true;

