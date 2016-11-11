/// New_Sprite(edif_near1.sprite_index, edif_near2.sprite_index)
var edif_current = argument[0];
var sprite_near1 = argument[1];
var sprite_near2 = argument[2];

var num_build = irandom_range(0, available_buildings);
var new_sprite = asset_get_index("spr_edificio_" + string(num_build));

while(new_sprite == sprite_near1 or new_sprite == sprite_near2){
    num_build = irandom_range(0, available_buildings);
    new_sprite = asset_get_index("spr_edificio_" + string(num_build));
}

// Change Sprite.
edif_current.sprite_index = new_sprite;
edif_current.depth = Set_Depth(num_build);
