 /// point_nearest(obj);
obj = argument[0];
var lista= ds_list_create();
if(Player.image_xscale == 1) lista = instance_nearest_list(x + bbox_left, y, obj);
else if(Player.image_xscale == -1) lista = instance_nearest_list(x + bbox_right, y, obj);
var lista2 = ds_list_create();

for(var i = 0; i < 10; i++){
    ds_list_add(lista2, "noone");
}


for(var i = 0; i < ds_list_size(lista); i++){

    var obj_ = ds_list_find_value(lista, i);
    if(image_xscale == 1){ var xx = obj_.x + obj_.sprite_width; }
    else if (image_xscale == -1){ var xx = obj_.x; }
    
   /* if(!position_meeting(xx, obj_.y, Bola)){
        instance_create(xx, obj_.y, Bola);
    }*/
    
    if(image_xscale) var xx1 = Player.bbox_left;
    else var xx1 = Player.bbox_right;
     
    ds_list_replace(lista2, i, point_distance(xx1, Player.y + 48, xx, obj_.y));
    
}

for(var j = 0; j < ds_list_size(lista2); j++){
    for(var i = 0; i < ds_list_size(lista2); i++){
        if(ds_list_find_value(lista2, i + 1) == "noone") break;
        if(ds_list_find_value(lista2, i) > ds_list_find_value(lista2, i + 1)){
        
            var temp = ds_list_find_value(lista2, i);
            ds_list_replace(lista2, i, ds_list_find_value(lista2, i + 1));
            ds_list_replace(lista2, i + 1, temp);
            
            var temp2 = ds_list_find_value(lista, i);
            ds_list_replace(lista, i, ds_list_find_value(lista, i + 1));
            ds_list_replace(lista, i + 1, temp2);
        }    
    }
}

//show_debug_message(ds_list_find_value(lista, 0));
return ds_list_find_value(lista, 0);
