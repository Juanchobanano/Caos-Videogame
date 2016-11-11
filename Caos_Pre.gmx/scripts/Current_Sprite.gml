/// Current_Sprite(sprite, speed, index, retard);
if(retard > 0){ 
   retard -= 1; exit; 
   
}else{
    // Different sprite is required !
    if(diff){
        if(sprite_index == argument[0]) exit;
        else diff = false;
    }    
}

if(sprite_index == asset_get_index("spr_player" + jugador + "_climb_" + humor + "_eat")){
    if(image_index == 4){
        eating = false;
        retard = retard_value;
        // Caos!
        if(poder_ate == "billetes" and humor == "normal" and num_level >= 3){ 
            angry = 100;
        }
        poder_ate = "";
        exit;
    }
}else if(sprite_index == asset_get_index("spr_player" + jugador + "_ground_" + humor + "_eat_up")){
    if(image_index == 4){
        eating = false;
        retard = retard_value;
        /// Caos!
        if(poder_ate == "billetes" and humor == "normal"){ 
            angry = 100;
        }
        poder_ate = "";
        exit;
    }
}else if(sprite_index == asset_get_index("spr_player" + jugador + "_ground_" + humor + "_eat_down")){
    if(image_index == 4){
        eating = false;
        retard = retard_value;
        // Caos!
        if(poder_ate == "billetes" and humor == "normal"){ 
            angry = 100;
        }
        poder_ate = "";
        exit;
    }
}

if(sprite_index == asset_get_index("spr_player" + jugador + "_jump_" + humor + "_damage")){
    if(!grounded) exit;
}

if(eating or take_women or instance_exists(Rage)) exit;

sprite_index = argument[0];
image_speed = argument[1];


if(argument_count > 2){
    var index = argument[2];
    image_index = index;
}

// Retard every sprite.
if(argument_count > 3){
    retard = argument[3];
    diff = true;
}
