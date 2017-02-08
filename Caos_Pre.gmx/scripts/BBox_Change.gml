/// BBox_Change()
var second_building = Search_Building(climbed_building);    
var change = false;

if(second_building.building_life > 0){
    if(position_meeting(x, bbox_bottom, second_building)){
    
       if(sprite_index == asset_get_index("spr_player_climb_normal_attack")) var rango = -21;
       else var rango = -14;
       
       if ((second_building.bbox_top - bbox_bottom) >= rango and (second_building.bbox_top - bbox_bottom) <= rango + 10){
            image_xscale *= -1;
            show_debug_message('true');
            take_women = false;
            retard = 0;
            eating = false;
            climbed_building = second_building;
            Current_Sprite(spr_player_ground_normal_idle, 0, irandom_range(0,2));
            y = climbed_building.y - sprite_get_height(climbed_building.sprite_index) - sprite_get_height(sprite_index)/2;
            climb = false;  
       }
    }
} 


