/// Destroy_Enemy_Android(xx, yy)

var xx = argument[0];
var yy = argument[1];
var enemy = argument[2];

//Create_Debug(xx, yy);
// Climb don't kill people.
// Climb don't destroy letreros.
//show_debug_message("A PUNTO DE DESTRUI!!")
//show_debug_message(xx);
//show_debug_message(yy);

Play_Track("attack");

if(climb){
    if(place_meeting(xx, yy, Persona) or place_meeting(xx, yy, Letrero_Normal)){
        exit;
    }
}

if(!place_meeting(xx, yy, Soldado_Piso)){


    if(point_in_circle(xx, yy, x, y, 20)){
        destroy_h = instance_nearest(xx, yy, Helicoptero);
        if(destroy_h.sprite_index != spr_helicopter_back){
            with destroy_h instance_destroy(); // Get score dentro de cada objeto.
        }
    }else{
        with (enemy) instance_destroy();
        if(object_get_name(enemy) == "Soldado_Piso"){
            audio_play_sound(sn_eat_power, 1, 0);   
        }             
    }
}
