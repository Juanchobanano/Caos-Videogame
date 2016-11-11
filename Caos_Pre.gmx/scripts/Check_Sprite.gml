/// Check_Sprite(id_edificio, edif_list)
var edif = argument[0];
var edif_near1 = ds_list_find_value(argument[1], 0);
var edif_near2 = ds_list_find_value(argument[1], 1);

var defined = false;
if(edif_near2 != noone) defined = true;

// Select a new sprite.
if(defined){
    if((edif.sprite_index == edif_near1.sprite_index) or (edif.sprite_index == edif_near2.sprite_index)){
    
        // Change the sprite index.
        New_Sprite(edif, edif_near1.sprite_index, edif_near2.sprite_index);
    }   
}else{
    if(edif.sprite_index == edif_near1){
    
        // Change the sprite index.
        New_Sprite(edif, edif_near1.sprite_index, noone);
    }   
}
