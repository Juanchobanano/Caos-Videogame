// (Horizontal Attack).
var enemy = argument[0];
if(yy < y + 26 and yy > y - 46){

    // (Aside Attack).
    
        // Jump con sprite mirando a la derecha. (Aside attack).
        if(x < Player.x and Player.image_xscale == -1){
            Current_Sprite(asset_get_index("spr_player" + jugador + "_jump_" + humor + "_attack"), 0, 0, retard_value);
            //Destroy_Enemy_Android(x + 62 * image_xscale, y - 5, enemy);
        // Climb con sprite mirando a la izquierda. (Aside attack).
        }else if(x > Player.x and Player.image_xscale == 1){
            Current_Sprite(asset_get_index("spr_player" + jugador + "_jump_" + humor + "_attack"), 0, 0, retard_value);
           // Destroy_Enemy_Android(x + 62 * image_xscale, y - 5, enemy);
        }
        
    // (Front Attack). 
                  
        // Climb con sprite mirando a la derecha. (Front Attack).
        if(x > Player.x and Player.image_xscale == -1){
            Current_Sprite(asset_get_index("spr_player" + jugador + "_jump_" + humor + "_attack"), 0, 3, retard_value);
            //Destroy_Enemy_Android(x - 56 * image_xscale, y + 6, enemy);
        // Climb con sprite mirando a la izquierda. (Front Attack).
        }else if(x < Player.x and Player.image_xscale == 1){
            Current_Sprite(asset_get_index("spr_player" + jugador + "_jump_" + humor + "_attack"), 0, 3, retard_value);
            //Destroy_Enemy_Android(x - 56 * image_xscale, y + 6, enemy);
        }

// (Vertical Attack).
}else{

    // (Down Attack).   
    if(yy >= y + 26){
        Current_Sprite(asset_get_index("spr_player" + jugador + "_jump_" + humor + "_attack"), 0, 2, retard_value);
       // Destroy_Enemy_Android(x - 40 * image_xscale, y + 52, enemy);
        
    // (Up Attack).
    }else{
        Current_Sprite(asset_get_index("spr_player" + jugador + "_jump_" + humor + "_attack"), 0, 1, retard_value);
       //Destroy_Enemy_Android(x, y - 52, enemy);
    }
}



if(point_in_circle(enemy.x, enemy.y, x, y, 20)){
    destroy_h = instance_nearest(enemy.x, enemy.y, Helicoptero);
    if(destroy_h.sprite_index != spr_helicopter_back){
        with destroy_h instance_destroy(); // Get score dentro de cada objeto.
    }
}

