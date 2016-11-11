/// Search_Building(id_building);
var bo = argument[0];
var list = ds_list_create();
if(grounded){
    if(image_xscale) var xx = bo.bbox_right;
    else var xx = bo.bbox_left;
}else if(climbed_building != noone){
    if(image_xscale) var xx = bbox_left;
    else var xx = bbox_right;
}
list = instance_nearest_list(xx, bbox_bottom, Edificio);
for(var i = 0; i < ds_list_size(list); i++){
    if(ds_list_find_value(list, i) != bo){ 
      //  with(Edificio) color = c_white; 
    //    with (ds_list_find_value(list, i)) color = c_red;
      //  show_debug_message(ds_list_find_value(list, i));
        return ds_list_find_value(list, i);
    }
}
