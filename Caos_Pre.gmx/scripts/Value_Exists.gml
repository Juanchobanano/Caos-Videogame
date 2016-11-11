/// Value_Exists(val);
val = argument[0];
show_debug_message(val);
var list = ds_list_create();
list = instance_nearest_list(0, 0, Edificio);

for(var k = 0; k < ds_list_size(list); k++){
    if(ds_list_find_value(list, k) == val){
        return true;
    }
}
return false;
