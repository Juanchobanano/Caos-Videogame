/// Add_Sprite(texto, spr1, spr2, ...)
var texto = argument[0];
var spr_length = sprite_get_width(spr_botones);
var sprite_x = 0;
var draw = false;

// Set index.
var matriz = argument[1];
var index = argument[2];
var ind1 = ds_grid_get(matriz, index, 0);
var ind2 = ds_grid_get(matriz, index, 1);
var rot1 = ds_grid_get(matriz, index, 2);
var rot2 = ds_grid_get(matriz, index, 2);

if(ind2 != "") spr_length *= 2;

// Add spaces to text.
var length = string_length(texto);

for(var i = 0; i < length; i++){
    var clave = string_char_at(texto, i);
    if(clave == "@"){
        draw = true;    
            
        // Eliminar @
        texto = string_delete(texto, i, i+1);
        show_debug_message(texto);
        // Setear las coordenadas x del sprite.
        var new_str = string_copy(texto, 0, i);
        sprite_x = string_width(new_str);
        
        // Insertar espacios.
        var space = "";
        while(string_width(space) < spr_length){
            space += " ";
        }
        texto = string_insert(space, texto, i);
        
        show_debug_message(texto);
        break;
    }
}

// Draw text.
draw_set_halign(fa_center);
draw_set_font(font_tutorial);
draw_set_color(c_white);
draw_text(room_width/2, 130, texto);
draw_set_halign(noone);

// Draw sprite.
if(!draw) exit;
var xx = room_width/2 - string_width(texto)/2 + sprite_x;
draw_sprite_ext(spr_botones, ind1, xx, 100, 1, 1, rot1, c_white, 1);
if(ind2 != ""){
    draw_sprite_ext(spr_botones, ind2, xx + spr_length/2, 100, 1, 1, rot2, c_white, 1);
}
