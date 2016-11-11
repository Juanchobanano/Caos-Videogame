/// Going_Up_Checker();
var rango = 23;

// If there are not advertisement above the player.
if(!place_meeting(x, y, Letrero_Up)){
   // show_debug_message(object_get_parent(climbed_building.lt)); 

    //show_debug_message('distance to top');
    //show_debug_message(point_distance(Player.x, Player.y+20, climbed_building.bbox_left, climbed_building.y - sprite_get_height(climbed_building.sprite_index)));            
    if(image_xscale == 1){
        var in_top = point_distance(Player.x, Player.y+20, climbed_building.bbox_right, climbed_building.y - sprite_get_height(climbed_building.sprite_index)) < rango;
        //show_debug_message(in_top);
        // show_debug_message('distance to x');
       // show_debug_message(point_distance(x,y,climbed_building.bbox_right,y));
    }else{
        var in_top = point_distance(Player.x, Player.y+20, climbed_building.bbox_left, climbed_building.y - sprite_get_height(climbed_building.sprite_index)) < rango;
        //show_debug_message(in_top);
      //  show_debug_message('distance to x');
      //  show_debug_message(point_distance(x,y,climbed_building.bbox_left,y));
    }
           
    // Player is not in top.  
    if(!in_top){
        y -= climb_speed; 
        return false;
        
    // Player is in top.
    }else{
       // show_debug_message('in top');
        
        Current_Sprite("spr_player" + jugador + "_ground_" + humor + "_idle", 0, irandom_range(0,2))
       // show_debug_message(sprite_get_height(sprite_index)*2 - 2);
        y = climbed_building.y - sprite_get_height(climbed_building.sprite_index) - 42 /*sprite_get_height(sprite_index)*2*/ - 2;
        x = x + sprite_get_width(sprite_index)/2 * image_xscale * -1;
        climb = false;

        return true;
    } 
}
