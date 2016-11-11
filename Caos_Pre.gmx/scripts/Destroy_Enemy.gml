/// Destroy_Enemy();

// Set comparable x and y coordinates.
if(sprite_index == asset_get_index("spr_player" + jugador + "_ground_" + humor + "_attack")){
    switch(image_index){
        case 2: // Up ground attack.
            Destroy_Object(x + sign(image_xscale) * 8, y - 71);
        break;
        case 1: // Down ground attack.
            Destroy_Object(x + (sign(image_xscale) * -1) * 23, y + 36);
        break;
        case 0: // Frontal ground attack.
            Destroy_Object(x + (sign(image_xscale) * -1) * 53, y - 12);
        break;
    }
}else if(sprite_index == asset_get_index("spr_player" + jugador + "_jump_" + humor + "_attack")){
    switch(image_index){

        case 0: // Aside.
            Destroy_Object(x + 62 * image_xscale, y - 5);
        break;
        case 1: // Up
            Destroy_Object(x, y - 52);
        break;
        case 2: // Down
            Destroy_Object(x - 40 * image_xscale, y + 52);
        break;  
        case 3: // Front
            Destroy_Object(x - 56 * image_xscale, y + 6);
        break;
    }
}else if(sprite_index == asset_get_index("spr_player" + jugador + "_climb_" + humor + "_attack")){
    switch(image_index){
        case 0: // Aside.
            Destroy_Object(x + 52 * image_xscale, y - 7);
        break;
        case 1: // Up
            Destroy_Object(x, y - 52);
        break;
        case 2: // Down
            Destroy_Object(x - 40 * image_xscale, y + 52);
        break;
        case 3: // Front
            Destroy_Object(x - 56 * image_xscale, y + 6);
        break;
    }
}

