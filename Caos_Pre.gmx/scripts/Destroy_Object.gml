/// Destroy_Object(xx, yy);
var xx = argument[0];
var yy = argument[1];

// Destroy enemy.
//show_debug_message("???")
if(collision_circle(xx, yy, 15, Enemy, 1, 1)){ // 15

    // Get enemy id.
    var enemy = instance_nearest(xx, yy, Enemy);
    //with enemy image_blend = c_red;
    
    // Play sound attack.
    Play_Track("attack");
    
    // Destroy enemy.
    if(!place_meeting(xx, yy, Soldado_Piso)){
        if(place_meeting(xx, yy, Helicoptero)){
            destroy_h = instance_nearest(xx, yy, Helicoptero);
            if(destroy_h.sprite_index != spr_helicopter_back){
                with destroy_h instance_destroy(); // Get score dentro de cada objeto.
            }
        }else{
            with (enemy) instance_destroy();
            if(object_get_name(enemy) == "Soldado_Piso"){
                audio_play_sound(sn_eat_power, 1, 0);   
            } 
        }
    }
}else{
    Play_Track("air_attack");
}
