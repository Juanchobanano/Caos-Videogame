// Cambiar Escala.
if(argument[0].x < Player.x) escala = 1;
else escala = -1;
image_xscale = escala;
var yy = argument[1];

// (Horizontal Attack).
if(yy < y + 10 and yy > y - 15){

   // show_debug_message("Horizontal");
    Current_Sprite(asset_get_index("spr_player" + jugador + "_ground_" + humor + "_attack"), 0, 0, retard_value);
    Destroy_Enemy_Android(x + (sign(image_xscale) * -1) * 53, y - 12);
    
// (Vertical Attack).
}else{

    // (Down Attack).   
    if(yy >= y + 10){
      //  show_debug_message("Down");
    
        if(Can_Eat("floor_down")){
            Eat_Person(asset_get_index("spr_player" + jugador + "_ground_" + humor + "_eat_down"));
            eating = true;
        }else{
            Current_Sprite(asset_get_index("spr_player" + jugador + "_ground_" + humor + "_attack"), 0, 1, retard_value);
            Destroy_Enemy_Android(x + (sign(image_xscale) * -1) * 23, y + 36);
        }


        
    // (Up Attack).
    }else{
       //  show_debug_message("Up");
        if(Can_Eat("floor_up")){
            Eat_Person(asset_get_index("spr_player" + jugador + "_ground_" + humor + "_eat_up"));
            eating = true;
        }else{
            Current_Sprite(asset_get_index("spr_player" + jugador + "_ground_" + humor + "_attack"), 0, 2, retard_value);
            Destroy_Enemy_Android(x + sign(image_xscale) * 8, y - 71);
        }
    }
}