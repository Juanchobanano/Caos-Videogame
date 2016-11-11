take_women = false;
eating = false;
if(climb){
    climb = false;
    grounded = false;
   /* vsp = -1;
    hsp = climb_speed * image_xscale * - 1; */
    climbed_building = noone;
}

// Apply gravity.
if(vsp < 10){
    vsp += grav;
}
 
// Floor.
if(place_meeting(x, y+vsp, Floor)){
    while(!place_meeting(x, y + sign(vsp), Floor)){
        y += sign(vsp);
    }
    vsp = 0;
    hsp = 0;
    grounded = true;
    if(!lose){
        //if(instance_exists(Puntaje_Suma)) with Puntaje_Suma instance_destroy();
        //player_score = puntaje_global; // Set the score to its initial value.
        // Create screen shake and restart some variables.
        lose = true;
        var s = instance_create(0,0,Screen_Shake);
        //num_level--;
       // vida_global = 100;
        with (s) { alarm[0] = 25; }
        
        // Draw score.
        draw_score = true;
        
        // Decrease chance variable. (3 chances per level).
        if(room != game10){ alarm[0] = 30; }
        else{ alarm[3] = 90; }
        audio_play_sound(sn_perdistes, 1, 0);
        
   
        instance_create(room_width/2, room_height/2 - 30, GameOver);
   
    
    } 
    
    // Guardar todos los edificios restantes.
   /* if(ds_list_empty(avance_edificios)){
        var list = instance_nearest_list(0,0, Edificio);
        for(var i = 0; i < ds_list_size(list); i++){
            show_debug_message(ds_list_find_value(list, i).x);
            if(ds_list_find_value(list, i).building_life > 0){
                ds_list_add(avance_edificios, ds_list_find_value(list, i).x);
            }
        }
    }
    */
    
    // Save buildings that haven't being destroyed.
/*    var list = instance_nearest_list(0,0, Edificio);
    ds_list_clear(avance_edificios);
    
    avance_edificios = ds_list_create();
    for(var i = 0; i < ds_list_size(list); i++){
        var edificio = ds_list_find_value(list, i);
        ds_list_add(avance_edificios, 0, 0, edificio.x);
    }*/
    
}

Current_Sprite(asset_get_index("spr_player" + jugador + "_dead"), 0.06, 0, retard_value);
