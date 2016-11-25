if(room != game_intro and instance_number(Edificio) == 1 and create_kids and !instance_exists(Building_25)){
    for(var i = 0; i < 3; i++){    
        if(room == game10) var obj = Child_Final;
        else var obj = Child_Run;                               
        
        var xx = x + sprite_width/2;
                
        var c = instance_create(xx - 44 + i * 34, 397, obj);
    
        if(room != game10){
            switch(i){
                case 0:
                    c.sprite_index = spr_child3_run_2;
                break;
                case 1:
                    c.sprite_index = spr_child2_run_2;
                    c.y -= 6;
                break;
                case 2:
                    c.sprite_index = spr_child1_run_2;
                break;
            }
            c.hspeed = -3;
            c.image_xscale = -1;
            
      
        // Final del juego.
        }else{
            switch(i){
                case 0:
                    c.sprite_index = spr_child2_idle_2;
                    c.y -= 6;
                break;
                case 1:
                    c.sprite_index = spr_child3_idle_2;
                break;
                case 2:
                    c.sprite_index = spr_child1_idle_2;
                break;
            }  
        }
        
    }
    create_kids = false;
    chances = 0;
    
    // Create textbox.
    var t = instance_create(0,0, TextBox);
    
    if(room == game10){
        audio_stop_sound(sn_helicopter_behind);
        audio_stop_sound(sn_helicopter_front);
        with(Control_World){
            with Helicoptero instance_destroy();
            alarm[2] = -1;
            alarm[0] = -1;
            with Soldado_Piso instance_destroy();
            with Tank instance_destroy();                        
        }
        
        with(Player){
            controles = "windows";
            end_game = true;
            poder_ate = "billetes";
            Player.angry = 100;
            x = room_width/2 - 35;
            image_xscale = -1;
            image_speed = 0;
        }
        
        
        if(instance_exists(Letrero)){
            with Letrero instance_destroy();
        }
    }
    
    with (Player) dibujar_scores = false;
    with Dibujar_Poderes instance_destroy();
    with Pausa instance_destroy();
}
