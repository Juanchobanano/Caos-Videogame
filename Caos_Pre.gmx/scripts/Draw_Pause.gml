/// Draw_Credits()
var num = array_length_1d(txt);
var count = 0;

// Draw the achievements.
for(var i = 0; i < num; i++){

    // Set text configuration.
    draw_set_color(c_white);
    draw_set_font(font_game_15);

    // Draw the text.
    draw_set_halign(fa_center);
    var xx = room_width/2 //- string_width(txt[i])/2;
    if((i%2) != 0 or i == 0){ draw_set_color(c_yellow); }else{ draw_set_color(c_white) }
    draw_text(xx, yy_marco, txt[i]);
    draw_set_halign(noone);
    
    // Increase offset and height and restore xx coordinate.
    if(i != 0){
        count++;
        if(count < 2){
            yy_marco += string_height(txt[i]) + 10;
            height += string_height(txt[i]) + 10;
        }else{
            count = 0;
            yy_marco += string_height(txt[i]) + 30;
            height += string_height(txt[i]) + 30;
        }
    }else{
        yy_marco += string_height(txt[i]) + 30;
        height += string_height(txt[i]) + 30;
    }
}


