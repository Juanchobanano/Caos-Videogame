///draw_text_outlined(x, y, string, colour, outline_colour, bulk)
var xx = argument0;
var yy = argument1;
var str = argument2;
draw_set_colour(argument4);
var bulk = argument5;

draw_text(xx-bulk, yy, str);
draw_text(xx+bulk, yy, str);
draw_text(xx, yy-bulk, str);
draw_text(xx, yy+bulk, str);
draw_set_colour(argument3);
draw_text(xx, yy, str);
draw_set_colour(c_white);
