// (Horizontal Attack).
var xx = argument[0];
var yy = argument[1];

/*show_debug_message("yy: " + string(yy));
show_debug_message("y+15: " + string(y+15));
show_debug_message("y-10: " + string(y-10));*/

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


