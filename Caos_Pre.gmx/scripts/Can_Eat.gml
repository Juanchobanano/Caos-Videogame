/// Climb_Eat_Person(image_xscale, current_sprite)
var pos = argument[0];
var list_ = ds_list_create();


if(take_women) return false;
if(instance_number(Persona) > 0) list_ = instance_nearest_list(x, y, Persona); // lista
else return false;


for(var i = 0; i < ds_list_size(list_); i++){

    if(pos == "climb"){
        // Check if the player can eat a person.
        switch(image_xscale){
            case 1: // Left.
                if(collision_rectangle(bbox_left - 15, y - 2, Player.x, y + 16, ds_list_find_value(list_, i), 0, 0)){
                    eat_person_id = ds_list_find_value(list_, i);
                    Get_Type(eat_person_id);
                    if (object_ind != "Poder"){                    
                        Get_Score(eat_person_id.x, eat_person_id.y, 50, false);
                    }
                    return true;
                }
            break;
            case -1: // Right.
                if(collision_rectangle(bbox_right + 15, y - 2, Player.x, y + 16, ds_list_find_value(list_, i), 0, 0)){
                    eat_person_id = ds_list_find_value(list_, i);
                    Get_Type(eat_person_id);
                    if (object_ind != "Poder"){                    
                    Get_Score(eat_person_id.x, eat_person_id.y, 50, false);
                    }
                    return true;
                }
            break;
        }
        
    }else if(pos == "floor_up"){
    
        // Check if the player can eat a person.
        switch(image_xscale){
            case 1: // Left.
                if(collision_rectangle(x - 4, y - 80, x + 18, y - 18, ds_list_find_value(list_, i), 0, 0)){
                    eat_person_id = ds_list_find_value(list_, i);
                    Get_Type(eat_person_id);                 
                    Get_Score(eat_person_id.x, eat_person_id.y, 50, false);
                    return true;
                }
            break;
            case -1: // Right.
                if(collision_rectangle(x + 4, y - 80, x - 18, y - 18, ds_list_find_value(list_, i), 0, 0)){
                    eat_person_id = ds_list_find_value(list_, i);
                    Get_Type(eat_person_id);                 
                    Get_Score(eat_person_id.x, eat_person_id.y, 50, false);
                    return true;
                }
            break;
        }
        
    }else if(pos == "floor_down"){
        
        // Check if the player can eat a person.
        switch(image_xscale){
            case 1: // Left.
                if(collision_rectangle(x - 36, y + 25, x - 10, y + 47, ds_list_find_value(list_, i), 0, 0)){
                    eat_person_id = ds_list_find_value(list_, i);
                    Get_Type(eat_person_id);                 
                    Get_Score(eat_person_id.x, eat_person_id.y, 50, false);
                    return true;
                }
            break;
            case -1: // Right.
                if(collision_rectangle(x + 36 , y + 25, x + 10, y + 47, ds_list_find_value(list_, i), 0, 0)){
                    eat_person_id = ds_list_find_value(list_, i);
                    Get_Type(eat_person_id);                 
                    Get_Score(eat_person_id.x, eat_person_id.y, 50, false);
                    return true;
                }
            break;
        }
    }
    
}

// Cannot eat.
return false;
