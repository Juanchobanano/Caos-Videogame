/// Get object type.
with(argument[0]){
    if(object_get_name(object_index) == "Soldado"){
        object_ind = "Soldado";
    }else if(object_get_name(object_index) == "Women"){
        object_ind = "Women";
    }else if(object_get_name(object_index) == "Child"){
        object_ind = "Child";
    }else if(object_get_name(object_index) == "Poder"){
        object_ind = "Poder";
    }
}
