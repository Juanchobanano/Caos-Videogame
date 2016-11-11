/// Sprite_InRectangle(sprite, index, xx, yy, scale);
var spr = argument[0];
draw_sprite_ext(spr, argument[1], argument[2], argument[3], argument[4], argument[4], 0, c_white, 1);
if(in_Rectangle(
    argument[2], 
    argument[3], 
    argument[2] + sprite_get_width(spr),
    argument[3] + sprite_get_height(spr)
) and mouse_check_button_pressed(mb_left)){
    return true;
}
return false;
