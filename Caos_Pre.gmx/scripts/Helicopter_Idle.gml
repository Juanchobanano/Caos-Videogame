/// Helicopter_Idle

// Idle constants.
image_speed = .2;

// Helicopter hasn't attacked the Player.
if(!attacked){
    // Calculate player's (x,y).
    if(player_y == noone){
    
        if(abs(self.x - Player.x) < 5 and !attacked){
        
            // Set player (x,y) attack position.
            player_y = Player.y;
            player_x  = Player.x;
            xx = self.x;
            
            // Change position.
            if(pos == -width_back/2){
                pos = 768 + width_back/2;
            }else if(pos == 768 + width_back/2){
                pos = -width_back/2;
            }
            
           // call_h = id;         
           // show_debug_message('change position');
            
            // Change leave position.
           /* with(Control_Helicopteros){
                for(var i = 0; i < num_level + helicopter_num; i++){
                    if(h[i] == noone) break;
                    if(call_h == h[i]){
                        if(pos[i] == -width_back/2){
                            pos[i] = room_width + width_back/2;
                        }else if(pos[i] == room_width + width_back/2){
                            pos[i] = -width_back/2;
                        }
                    }
                }
            } */
        }
    }else{
        if(cambiar_a_diagonal){
            if(image_xscale == 1){
                if(self.x >= xx + limit_x){ 
                    sprite_index = spr_diagonal;
                    cambiar_a_diagonal = false;
                    spd = 0;
                }
            }else{
                if(self.x <= xx - limit_x){ 
                    sprite_index = spr_diagonal;
                    cambiar_a_diagonal = false;
                    spd = 0;
                }
            }
        }
    }
    
    
    // Calculate y optimal positon.
    if(sprite_index == spr_diagonal){
        if(time_diagonal > 0){ time_diagonal--; }
        else{ sprite_index = spr_helicopter_front; spd = 0; }
        
    }else if(sprite_index == spr_helicopter_front){
        if(!ycalculated){ 
            var player_height = sprite_get_height(Player.sprite_index);
            yattack_position = player_y - player_height;    
            ycalculated = true;
        }
    }
    
    // Move the helicopter up or down.
    if(ycalculated){
        if(wait_for_down <= 0){
            if(!in_y){
                
                if(self.y < yattack_position) above = true;
                if(move_in_y){ if(above) y += vel; else y -= vel; }
            }
            
            // Helicopter is in position to attack.
            if(distance_to_point(x, yattack_position) < 1){
                image_xscale = image_xscale * -1;
                alarm[0] = 5;
                move_in_y = false;
               
                state = Helicopter_Attack;
            }
        }else{
            wait_for_down--;
        }   
    }else{
        // Set idle sprite and speed.
        hspeed = spd * image_xscale;
    }
}else{
    spd = 6;
    hspeed = spd * image_xscale;
}
