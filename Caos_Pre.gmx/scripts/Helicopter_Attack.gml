/// Helicopter_Attack

// Set attacked variable to true.
attacked = true;

// Change sprite.
sprite_index = spr_helicopter_diagonal;

// Move towards final position.
move_towards_point(
    player_x, 
    player_y - sprite_get_height(Player.sprite_index)/2, 
    attack_speed
);

// Helicopter is in final position.
if(distance_to_point(player_x, player_y - sprite_get_height(Player.sprite_index)/2) < 5){

    // Set vspeed to 0.
    vspeed = 0;

    // Set alarm to -1
    alarm[0] = -1;

    // Change sprite.
    sprite_index = spr_helicopter_perfil;
    
    // Change state.
    state = Helicopter_Idle;
}
