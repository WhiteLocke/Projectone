/* Parameters
argument0 - the action*/






    
    Player.party[argument0.targets[0]].currentHP -= argument0.attacker.strength;
    Player.party[argument0.targets[0]].hit = true
    numbers = instance_create(Player.party[argument0.targets[0]].x+32,Player.party[argument0.targets[0]].y,obj_battle_damage)
    numbers.damage = true
    numbers.attack = argument0.attacker.strength
    animation = instance_create (Player.party[argument0.targets[0]].x-32,Player.party[argument0.targets[0]].y+16,obj_claw)
    obj_battle_controller.actionActive = false;
    argument0.attacker.currentInitiative = 0;
    argument0.attacker.actionFinished = true;


