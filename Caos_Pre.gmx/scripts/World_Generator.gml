/// World_Generator(num_level, offset)
/*var num_level = argument[0];
var offset = argument[1]; // 80

var number_build = num_level + 5;

for(var i = 0; i < number_build; i++){

    // Create the building instance.
    var x_random = irandom_range(offset, room_width - offset - sprite_get_width(sprite_index));
    var edif = instance_create(x_random, piso_y, Edificio);

    // Select the image index and set the depth depending of the image selected.
    with(edif){
    
        // Select the image.
        var num_build = irandom_range(1,available_buildings);
        sprite_index = asset_get_index("spr_building_" + string(num_build));
        
        // Set the depth.
        depth = Set_Depth(num_build);
    } 
    
    // Move the building to its correct position.
        
    // Get a list with the building objects.
    var near_list = ds_list_create();
    near_list = instance_nearest_list(x, y, Edificio);
    
    // Move the building.
    Move_Building(edif, near_list);
    
    // Destroy the list.
    ds_list_destroy(near_list);
}


/* Añadir edificios.

- Cambiar en este codigo el Create Advertising, numero de sprite.
- Ingresar al Step Event y Cambiar numeros.
- Ingresar al Script Set_Depth y cambiar numeros.

