/// Move_Building(move_id, building_list);
var edif = argument[0];
var near_edif1 = ds_list_find_value(argument[1], 0);
var dir = 0;

if(near_edif1 == noone) exit; // Exit the script if near_edif is not defined.
show_debug_message(near_edif1);

var limite = 2;
for(var i = 0; i < instance_number(Edificio); i++){
    if(place_meeting(x, y, ds_list_find_value(argument[1], i))){
        limite--;
    }
}
if(limite <= 0){
    show_debug_message('destroy');
    instance_destroy(); exit;
}


// Move Left.
if(position_meeting(edif.bbox_right, edif.bbox_top, near_edif1)){
    dir = -1;
// Move right.
}else if(position_meeting(edif.bbox_left, edif.bbox_top, near_edif1)){
    dir = 1;
// Don't Move.
}else{
    dir = 0;
}

// Move the building.
switch(dir){
    // Left.
    case -1:
        Check_Sprite(edif, argument[1]); // Change the sprite if it is the same of the nearest building.
        var correct_x = near_edif1.bbox_left + 12 /*sprite_get_width(near_edif1.sprite_index)/4*/ - sprite_get_width(edif.sprite_index); // Calculate the correct position.
        while(edif.bbox_left > correct_x) edif.x -= 1; // Move the object.
    break;
    // Right.
    case 1:
        Check_Sprite(edif, argument[1]); // Change the sprite if it is the same of the nearest building.
        var correct_x = near_edif1.bbox_right - 12 /*sprite_get_width(near_edif1.sprite_index)/4*/ + sprite_get_width(edif.sprite_index); // Calculate the correct position.
        while(edif.bbox_right < correct_x) edif.x += 1; // Move the object.
    break;
    // Exit this script.
    case 0:
        exit;
    break;
}
