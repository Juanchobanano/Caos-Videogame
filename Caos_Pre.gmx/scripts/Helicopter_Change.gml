/// Helicopter_Change(id);
with(argument[0]){
    //show_debug_message('change heliucopters');    

    // Reset variables.
    Helicopter_Variables();
        
    // Change image xscale.
    image_xscale = image_xscale * -1; // This change the speed aswell.
    
    // Change sprite index and y position.
    if(sprite_index == spr_helicopter_back){
        sprite_index = spr_helicopter_perfil;
        y = irandom_range(
            sprite_get_height(spr_helicopter_perfil),
            345 - sprite_get_height(spr_helicopter_perfil)
        );
        depth = -4;
    }else{
        y = irandom_range(50, 180);
        sprite_index = spr_helicopter_back;
        depth = 20;
        spd = 4;
    }
    
    // Set new x position.
    if(distance_to_point(room_width,0) > distance_to_point(0,0)) x = -sprite_get_width(sprite_index);
    else x = room_width + sprite_get_width(sprite_index);
    
}
