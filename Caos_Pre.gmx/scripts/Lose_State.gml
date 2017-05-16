take_women = false;
eating = false;
hsp = 0;
 
if(climb){
    climb = false;
    grounded = false;
    climbed_building = noone;
   
}

// Apply gravity.
if(vsp < 10){
    vsp += grav;
}
 
// Floor.
/*if(place_meeting(x, y+vsp, Floor)){
    
    while(!place_meeting(x, y + sign(vsp), Floor)){
        y += sign(vsp);
    }
    vsp = 0;
    hsp = 0;
    grounded = true;*/
    
    
if(Player.y - sprite_height/2 > room_height){
    if(!lose){

        // Create screen shake and restart some variables.
        lose = true;
        //var s = instance_create(0,0,Screen_Shake);

        //with (s) { alarm[0] = 25; }
        
        // Decrease chance variable. (3 chances per level).
        if(room != game10){ alarm[0] = 30; }
        else{ if(chances > 0){ alarm[0]= 30 } else{ alarm[3] = 90; } }
        
  
           // var go = instance_create(room_width/2, room_height/2 - 30, GameOver);

            // Draw score.
          //  draw_score = true;
          //  audio_play_sound(sn_perdistes, 1, 0);

           /* if(gameover){
                gameover = false;
                with(go) sprite_index = spr_gameover;
                draw_score = false;
            }*/
    }    
}   
    
//}



var asset = asset_get_index("spr_player" + jugador + "_jump_" + humor + "_damage");
Current_Sprite(asset, 0, 0, retard_value);
//Current_Sprite(asset_get_index("spr_player" + jugador + "_dead"), 0.06, 0, retard_value);
