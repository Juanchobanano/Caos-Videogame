/// Dialogs_Features(room, index);
var room_ = argument[0];
var t = argument[1];

if(animar){
    switch(room_){
        case game_intro:
            switch(t){
                case 1:
                    
                    // Crear a Daniel.
                    var c = instance_create(1395, 399, Child_Intro);
                    with(c){
                        sprite_index = spr_child3_idle_2;
                    }
                
                break;


                case 3: // Crear mujer.
                    var women = instance_create(1392, 394, Child_Intro);
                    with(women) sprite_index = spr_women_2;
                     audio_stop_sound(sn_helicopter_front);
                break;
                
                // Pasan dos helicoptero.
                case 5:
                    instance_create(-20 + 768, 80, Helicopter_Intro);
                   // instance_create(-60 + 768, 200, Helicopter_Intro);
                break;
                
                // Crear a Julián.
                case 6:
                    var julian = instance_create(1359, 399, Child_Intro);
                    with(julian){
                        sprite_index = spr_child2_idle_2;
                        y = 394;
                     }
                break;
                
                
                case 7: // Destruir mujer, cerrar la puerta, niños siguen caminando.
                    var women = instance_nearest(1395, 399, Child_Intro);
                    with women instance_destroy();
                    with Building_32 image_index = 0;
                    
                    
                    with(Child_Intro){
                        switch(sprite_index){
                            case spr_child1_idle_2:
                                sprite_index = spr_child1_run_2;
                                y = 404-6;
                            break;
                            case spr_child2_idle_2:
                                sprite_index = spr_child2_run_2;
                            break;
                            case spr_child3_idle_2:
                                sprite_index = spr_child3_run_2;
                            break;
                        }
                        x += 15;
                        dibujar_exclamacion = false;
                        exclamacion = false;
                        with Exclamacion instance_destroy();
                        image_speed = .2;
                        image_xscale = -1;
                        hspeed = -5;
                    }
                    
                    
                    with (Control_Intro){
                        seguir_ninos = true;
                    }
                break;
                
                case 8:
                    can_continue = false;
                break;
                
                
                // Empiezan a salir personas corriendo.
                case 9:
 
                    //audio_sound_gain(sn_soundtrack_1, 1, 4000);
                    /*var rage = instance_create(view_wview[0]/2, room_height/2, Rage);
                    with(rage){ alarm[0] = 45; }*/
                      with(Control_Intro) { alarm[0] = 1; }
                      audio_stop_sound(sn_helicopter_front);
                   
                break;
                
                // Explosiones.
                case 10:
                    audio_stop_sound(sn_musica_intro);
                    audio_play_sound(sn_soundtrack_pablo, 1, 1);
                    //audio_sound_gain(sn_soundtrack_1, 1, 3000);
                    
                    with(Control_Intro){ alarm[3] = 1; }
                    with(Child_Intro){ dibujar_exclamacion = true; }
                    with(Control_Intro){ 
                        alarm[1] = 1; 
                        alarm[2] = 1;
                        alarm[4] = 1;                        
                    }
                    audio_play_sound(sn_helicopter_front, 1, 1);                    audio_sound_gain(sn_helicopter_front, 1, 3000);

                break;
                
                case 11:
                    can_continue = false;
                break;
                
             
                
                
            }
        break;
        // Final del juego.
        default:
            if(room != game10){
               can_continue = false; 
            }
        break;
        
    }
    animar = false;
}
