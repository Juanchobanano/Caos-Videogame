// (Horizontal Attack).
var xx = argument[0];
var yy = argument[1];
var enemy = argument[2];

/*show_debug_message("yy: " + string(yy));
show_debug_message("y+15: " + string(y+15));
show_debug_message("y-10: " + string(y-10));*/

if(yy < y + 10 and yy > y - 15){

        
        //show_debug_message(xx);
        //show_debug_message(x);
       //show_debug_message("Horizontal Attack");
    // (Aside Attack).
    
        // Climb con sprite mirando a la derecha. (Aside attack).
        if(xx < Player.x and Player.image_xscale == -1){
        
          //  show_debug_message("Aside Attack");
            Current_Sprite(asset_get_index("spr_player" + jugador + "_climb_" + humor + "_attack"), 0, 0, retard_value);
        //    Destroy_Enemy_Android(x + 52 * image_xscale, y - 7, enemy);
            
            
        // Climb con sprite mirando a la izquierda. (Aside attack).
        }else if(xx > Player.x and Player.image_xscale == 1){
        
           //  show_debug_message("Aside Attack");
        
            Current_Sprite(asset_get_index("spr_player" + jugador + "_climb_" + humor + "_attack"), 0, 0, retard_value);
         //   Destroy_Enemy_Android(x + 52 * image_xscale, y - 7, enemy);
            
            
        }
    
    // (Front Attack). 
                  
        // Climb con sprite mirando a la derecha. (Front Attack).
        if(xx > Player.x and Player.image_xscale == -1){
        
          //  show_debug_message("Front Attack");
            var asset = asset_get_index("spr_player" + jugador + "_climb_" + humor + "_attack");
            Current_Sprite(asset, 0, 3, retard_value);
           // Destroy_Enemy_Android(x - 56 * image_xscale, y + 6, enemy);
        
        // Climb con sprite mirando a la izquierda. (Front Attack).
        }else if(xx < Player.x and Player.image_xscale == 1){
       //   show_debug_message("Front Attack");
            var asset = asset_get_index("spr_player" + jugador + "_climb_" + humor + "_attack");
            Current_Sprite(asset, 0, 3, retard_value);
           // Destroy_Enemy_Android(x - 56 * image_xscale, y + 6, enemy);
        }
        
// (Vertical Attack).
}else{
    
    // show_debug_message("Vertical Attack");

    // (Down Attack).   
    if(yy >= y + 10){
       // show_debug_message("Down Attack.");
        var asset = asset_get_index("spr_player" + jugador + "_climb_" + humor + "_up");
        Current_Sprite(asset, .2);
        
       // Destroy_Enemy_Android(x - 40 * image_xscale, y + 52, enemy);

    // (Up Attack).
    }else{
      //  show_debug_message("Up Attack");
        var asset = asset_get_index("spr_player" + jugador + "_climb_" + humor + "_attack");
        Current_Sprite(asset, 0, 1, retard_value);
     //   Destroy_Enemy_Android(x, y - 52,  enemy);

    }
    
}


if(climb){
    if(place_meeting(enemy.x, enemy.y, Persona) or place_meeting(enemy.x, enemy.y, Letrero_Normal)){
        exit;
    }
}

if(!place_meeting(enemy.x, enemy.y, Soldado_Piso)){

    if(point_in_circle(enemy.x, enemy.y, x, y, 20)){
        destroy_h = instance_nearest(enemy.x, enemy.y, Helicoptero);
        if(destroy_h.sprite_index != spr_helicopter_back){
            Play_Track("attack");
            with destroy_h instance_destroy(); // Get score dentro de cada objeto.
        }
    }else{
        with (enemy) instance_destroy();
        if(object_get_name(enemy) == "Soldado_Piso"){
            audio_play_sound(sn_eat_power, 1, 0);   
        }else{
            Play_Track("attack");
        }            
    }
}





/*
if(yy < y + 15 and yy > y - 10){

        

       // show_debug_message("Horizontal Attack");
    // (Aside Attack).
    
        // Climb con sprite mirando a la derecha. (Aside attack).
        if(xx < Player.x and Player.image_xscale == -1){
        
          //  show_debug_message("Aside Attack");
            Current_Sprite(asset_get_index("spr_player" + jugador + "_climb_" + humor + "_attack"), 0, 0, retard_value);
            Destroy_Enemy_Android(x + 52 * image_xscale, y - 7);
            
            
        // Climb con sprite mirando a la izquierda. (Aside attack).
        }else if(xx > Player.x and Player.image_xscale == 1){
        
            // show_debug_message("Aside Attack");
        
            Current_Sprite(asset_get_index("spr_player" + jugador + "_climb_" + humor + "_attack"), 0, 0, retard_value);
            Destroy_Enemy_Android(x + 52 * image_xscale, y - 7);
            
            
        }
    
    // (Front Attack). 
                  
        // Climb con sprite mirando a la derecha. (Front Attack).
        if(xx > Player.x and Player.image_xscale == -1){
        
         //   show_debug_message("Front Attack");
            var asset = asset_get_index("spr_player" + jugador + "_climb_" + humor + "_attack");
            Current_Sprite(asset, 0, 3, retard_value);
            Destroy_Enemy_Android(x - 56 * image_xscale, y + 6);
        
        // Climb con sprite mirando a la izquierda. (Front Attack).
        }else if(xx < Player.x and Player.image_xscale == 1){
          //  show_debug_message("Front Attack");
            var asset = asset_get_index("spr_player" + jugador + "_climb_" + humor + "_attack");
            Current_Sprite(asset, 0, 3, retard_value);
            Destroy_Enemy_Android(x - 56 * image_xscale, y + 6);
        }
        
// (Vertical Attack).
}else{
    
    // show_debug_message("Vertical Attack");

    // (Down Attack).   
    if(yy >= y + 15){
      //  show_debug_message("Down Attack.");
        var asset = asset_get_index("spr_player" + jugador + "_climb_" + humor + "_up");
        Current_Sprite(asset, .2);
        Destroy_Enemy_Android(x - 40 * image_xscale, y + 52);
        
    // (Up Attack).
    }else{
       // show_debug_message("Up Attack");
        Destroy_Enemy_Android(x, y - 52);
        var asset = asset_get_index("spr_player" + jugador + "_climb_" + humor + "_attack");
        Current_Sprite(asset, 0, 1, retard_value);
    }
    
}


