/// Player_Inputs(os_type)
if(argument[0] == "windows"){
    key_up = keyboard_check(vk_up);
    key_left = keyboard_check(vk_left);
    key_right = keyboard_check(vk_right);
    key_down = keyboard_check(vk_down);
    key_jump = keyboard_check_pressed(vk_space);
    key_attack = keyboard_check_pressed(ord('X'));
}else if(argument[0] == "android"){
    key_jump = keyboard_check_pressed(ord('Z'));
    key_attack = keyboard_check_pressed(ord('X'));   
    // Move in different directions.
    /*if(grounded){
        if(mouse_check_button(mb_left)){
            if(mouse_x < view_hview[0]/2){
                Active_Key("left");
            }else{
                Active_Key("right");
            }
        }else{
            key_right = 0;
            key_left = 0;
        }
    }
    
    if(climb){
        if(mouse_check_button(mb_left)){
            if(mouse_x < view_hview[0]/2){
                Active_Key("up");
            }else{
                Active_Key("down");
            }
        }else{
            key_up = 0;
            key_down = 0;
        }
    }*/
}else if(argument[0] == "intro"){
    key_left = 1;
}else if(argument[0] == "izq"){
    key_left = 1;
}else if(argument[0] == "der"){
    key_right = 1;
}
//show_debug_message(key_jump);


if(limits){
    if(bbox_left < 5){
        x = 5 + sprite_get_width(sprite_index)/2;
    }else if(bbox_right > room_width - 5){
        x = room_width - 5 - sprite_get_width(sprite_index)/2;
    }
}
