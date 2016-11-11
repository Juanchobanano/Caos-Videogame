/// Get_Score(x, y, score, [vida: true; score: false]);
//if(instance_exists(Puntaje)) with Puntaje instance_destroy();
if(instance_exists(Puntaje_Suma)) with (Puntaje_Suma) instance_destroy();

var p = instance_create(argument[0], argument[1], Puntaje);
var p_suma = instance_create(0,0, Puntaje_Suma);

var puntaje_list = instance_nearest_list(room_width/2, room_height/2, Puntaje);
for(var i = 0; i < ds_list_size(puntaje_list); i++){
   // if(i != 0){
        var puntaje1 = ds_list_find_value(puntaje_list, i);
        puntaje1.y -= sprite_get_height(spr_score_1000);
   // }
}

get_score = argument[2];
vida_bool_g = argument[3];
/*if(vida_bool_g){
    color_puntaje = make_color_rgb(204,0,41);
}else{
    color_puntaje = make_color_rgb(0,254,255);
}*/

with(p){
    puntaje = get_score;
   // puntaje_color_local = color_puntaje;
   // vida_bool = vida_bool_g;
}

with(p_suma){
    puntaje = get_score;
    puntaje_count_local = puntaje;
}
