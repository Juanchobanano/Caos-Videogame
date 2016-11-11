/// Building_Exists(edificio_x, avance_edificios)
var existe = false;
for(var i = 0; i < ds_list_size(argument[1]); i++){
    var en_pie = ds_list_find_value(argument[1], i);
    if(argument[0] == en_pie){
        return true;
    } 
}
return false;
