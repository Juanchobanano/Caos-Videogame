/// Draw_Powers(value, type, yy, scale);
switch(argument[1]){
    case "billetes":
        var index = 0;
    break;
    case "bomba":
        var index = 1;
    break;
    case "bolsa":
        var index = 2;
    break;
    case "jeringa":
        var index = 3;
    break;
}

for(var i = 0; i < argument[0]; i++){
    draw_sprite_ext(spr_power2_2, index, 250 + (i*40), argument[2], argument[3], argument[3], 1, c_white, 1);
}
