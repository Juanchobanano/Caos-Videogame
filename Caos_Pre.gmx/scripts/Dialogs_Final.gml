/// Dialogs_Final(room, index);
if(final){
    switch(argument[0]){
        case game_intro:
            switch(argument[1]){
            
                case 0:
                
                    audio_play_sound(sn_puerta, 1, 0);
                    with Building_32 image_index = 1;
                    
                break;
                
                case 4: // Los niños comienzan a caminar a la ciudad.
                    with(Child_Intro){
                        image_speed = .2;
                        /*if(sprite_index != spr_child1_idle_2){
                            y = 404;
                        }else{
                            y = 404-6; //416
                        }*/
                        image_xscale = -1;
                        switch(sprite_index){
                            case spr_child1_idle_2:
                                sprite_index = spr_child1_run_2;
                            break;
                            case spr_child2_idle_2:
                                sprite_index = spr_child2_run_2;
                            break;
                            case spr_child3_idle_2:
                                sprite_index = spr_child3_run_2;
                            break;
                        }
                        hspeed = -2;
                    }
                    
                    can_continue = false;
                break;
                /*case 14:
                    audio_sound_gain(sn_musica_intro, 0, 3000);
                break;*/
                
                case 17:
                    // Aparece Pablo Escobar.
                   //can_continue = false;
                    //with (Control_Intro) { alarm[7] = 30; } // Aparecer Caos. 
                   
    
    
                    instance_create(800, 200, Player); 
                    
                    
                    with(Control_Intro){
                        alarm[0] = -1;
                        alarm[1] = -1;
                        alarm[2] = -1;
                        alarm[3] = -1;
                        alarm[4] = -1;
                    }
                break;

                
                // Pablo ruge!
                case 18:
                
                    // EN OBJETO RAGE QUEDÓ ALGO PROGRAMADO!!
                        background_blend[0] = make_color_rgb(255, 50 ,10);
                        var rage = instance_create(view_wview[0]/2, room_height/2, Rage);
                        //with(rage){ alarm[0] = 45; }
                        //Play_Track("collapse_building");

                        instance_create(Player.x, Player.y, Player_Intro);
                        with(Player){ instance_destroy(); }
                
                        
                        with(Control_Intro){
                             alarm[5] = 150; // Room goto transition.                          
                            //alarm[6] = 1; // Create explosions.
                             alarm[7] = 60; // Move player.                             
                      
                        }
                        with(Control_Intro) sentido = "izquierda";
                       // instance_destroy();
                        with TextBox instance_destroy();
                    
                break;
                

            }
    
        break; 
        // Posicionar a Julián.
        case game10:
            switch(argument[1]){
                case 2:
                    with(instance_nearest(0,0, Child_Final)){
                        switch(sprite_index){
                            case spr_child1_idle_2:
                                sprite_index = spr_child1_run_2;
                            break;
                            case spr_child2_idle_2:
                                sprite_index = spr_child2_run_2;
                            break;
                            case spr_child3_idle_2:
                                  sprite_index = spr_child3_run_2;
                            break;
                        }
                        hspeed = -5;
                        image_xscale = -1;
                        image_speed = .2;   
                    }
                    can_continue = false;
          
                break;
            }
        break;   
    }
    final = false;
}


// STEP.
switch(argument[0]){
    case game_intro:
        switch(argument[1]){
            case 4: // Revisa si los niños ya llegaron al limite para pasar a la mamá quien los llama.
                var first_c = instance_nearest(0,0,Child_Intro);
                if(first_c.x < 1200){
                    t++;
                    str = 0;
                    audio_play_sound(sn_dialogo, 1, 1);
                    animar = true;
                    can_continue = true;
                    with(Child_Intro){
                        hspeed = 0;
                        dibujar_exclamacion = true;
                        image_xscale = 1;
                        
                        switch(sprite_index){
                            case spr_child1_run_2:
                                sprite_index = spr_child1_idle_2;
                            break;
                            case spr_child2_run_2:
                                sprite_index = spr_child2_idle_2;
                            break;
                            case spr_child3_run_2:
                                  sprite_index = spr_child3_idle_2;
                            break;
                        }
                        x -= 15;
                    }
                    

                }
            break; 
                       
        }
        
        
                
        // Detener a los niños cuando lleguen a la ciudad.
        if(argument[1] >= 12 and argument[1] <= 15){
            var first_c = instance_nearest(0,0,Child_Intro);
            if(first_c.x < 300){
                with(Child_Intro){
                    hspeed = 0;
                    switch(sprite_index){
                            case spr_child1_run_2:
                                sprite_index = spr_child1_idle_2; x -= 15;
                            break;
                            case spr_child2_run_2:
                                sprite_index = spr_child2_idle_2; x -= 15;
                            break;
                            case spr_child3_run_2:
                                  sprite_index = spr_child3_idle_2; x -= 15;
                            break;
                    }
                }
            }
        }
        
        
    break;
    case game10:
        switch(argument[1]){
            case 2:
               // var kids = instance_nearest_list(0,0, Child_Final);
               // var julian_c = ds_list_find_value(kids, 0);
                
                var julian_c = instance_nearest(0,0, Child_Final);
                
                if(julian_c.x < 230){
                    with(julian_c){
                        hspeed = 0;
                        x = 230;
                        image_speed = 0;
                        image_xscale = 1;
                        sprite_index = spr_child2_idle_2;
                        instance_create(0,0, End_Game);
                        //with TextBox instance_destroy();
                    }                 
                }
                
               /* var carlos_c = ds_list_find_value(kids, 1);
                if(carlos_c.x < 528){
                    with(carlos_c){
                        hspeed = 0;
                        image_speed = 0;
                        image_xscale = 1;
                        sprite_index = spr_child3_idle_2;
                        
                    }   
                    
                    var daniel_c = ds_list_find_value(kids, 2);
                    with(daniel_c){
                        hspeed = 0;
                        image_speed = 0;
                        image_xscale = 1;
                        sprite_index = spr_child1_idle_2;
                    }              
                }*/
                
            break;
        }
    break;
}
