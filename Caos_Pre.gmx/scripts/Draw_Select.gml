#define Draw_Select
 /// Draw_Select();

    // Draw bestscore
    draw_set_font(font_textbox2);
    draw_set_color(c_white);
    var str = "BEST SCORE: " + string(best_score);
    draw_text(10, 10, str);
    
    // Draw score.
    if(save){
        var str = "SCORE: " + string(save_puntaje);
        draw_text(10, 10 + string_height(str), str);
    }
   
   
 
    var yemenos = 20;
    if(change_color < 10){
        change_color++;
        color_select = c_white;
    }else{
        color_select = make_color_rgb(51,204,255);
        if(change_color < 20){
            change_color++;
        }else{
            change_color = 0;
        }
    }
    
    draw_set_halign(fa_center);
    
    if(font == "press") draw_set_font(font_press_20);    
    draw_set_font(font_wonder_20);
    draw_text_outlined(room_width/2 + 10, 80, "SELECT CHARACTER", color_select, c_black, 2);
    draw_set_halign(noone);
    
    var select = "SELECT";
    var color = c_white;
        
    // Draw pablo escobar.
    if(mouse_x > 204 and mouse_x < 204 + 128 and mouse_y > 210 - yemenos and mouse_y < 210 + 144 - yemenos){
        if(font == "press") draw_set_font(font_press_14);
        else draw_set_font(font_wonder_14);
        color = c_red;
        draw_sprite(spr_character_1, 1, 204, 210 - yemenos);
        if(mouse_check_button_released(mb_left) and !seleccionado){
            // Change soundtrack.
            audio_sound_gain(sn_soundtrack_pausa, 0, 3000);                
            seleccionado = true;
            jugador = "";
            var marco = instance_nearest(204, 210 - yemenos, Marco);
            with marco image_speed = 1;
            Play_Track("press_start");
            mouse_clear(mb_left);
        }
    }else{
          color = c_white;
          if(font == "press") draw_set_font(font_press_11);
          else draw_set_font(font_wonder_11);
          draw_sprite(spr_character_1, 0, 204, 210 - yemenos);
    }


    draw_set_halign(fa_center);
    draw_text_outlined(204 + 128/2, 180 - yemenos, "EL JEFE", color, c_black, 2); 
    draw_text_outlined(204 + 128/2, 360 - yemenos, select, color, c_black, 2);
    

    draw_set_halign(noone);
    
    if(num_level == 4) if(!instance_exists(New)) instance_create(440 + sprite_get_width(spr_character_2)/2, 210 + 144 - sprite_get_height(spr_new) - 25, New);

    color = c_white;
    
    if(num_level < 4) draw_set_alpha(.5);
    
    // Draw second character.
    if(mouse_x > 440 and mouse_x < 440 + 128 and mouse_y > 210 - yemenos and mouse_y < 210 + 144 - yemenos){   
    if(num_level == 4 or gacha_select){ // Select new character nivel 5.
            draw_sprite(spr_character_2, 1, 440, 210 - yemenos);
            if(mouse_check_button_released(mb_left) and !seleccionado){
                if(font == "press") draw_set_font(font_press_14);
                else draw_set_font(font_wonder_14);
                color = c_red;
                seleccionado = true;
                var marco = instance_nearest(440, 210 - yemenos, Marco);
                with marco image_speed = 1;
                jugador = "2";
                Play_Track("press_start");
                mouse_clear(mb_left);
               // room_goto_transition(Room_Transicion, 0, 45);
            }
        }else{
            draw_sprite(spr_character_2, 2, 440, 210 - yemenos);            
            if(mouse_check_button_pressed(mb_left)){
                color  = c_red;
                if(font == "press") draw_set_font(font_press_14);
                else draw_set_font(font_wonder_14);
            }            
            if(mouse_check_button_released(mb_left)){
                //seleccionado = true;

                if(font == "press") draw_set_font(font_press_11);
                else draw_set_font(font_wonder_11);
                color = c_white;
                if(audio_is_playing(sn_nogacha)) audio_stop_sound(sn_nogacha);
                audio_play_sound(sn_nogacha, 1, 0);
                mouse_clear(mb_left);
            }
        }
    }else{
        draw_set_color(c_white);
        if(font == "press") draw_set_font(font_press_11);
        else draw_set_font(font_wonder_11);
        draw_sprite(spr_character_2, 0, 440, 210 - yemenos);
    }
    
    
    

    draw_set_halign(fa_center);
    draw_text_outlined(440 + 128/2, 180 - yemenos, "EL MERO", color, c_black, 2); 
    draw_text_outlined(440 + 128/2, 360 - yemenos, select, color, c_black, 2);
    draw_set_halign(noone);
    draw_set_color(c_white);
    
    draw_set_alpha(1);

#define Draw_Select_Maquina
// Cambiar jugador.
var left = keyboard_check_pressed(vk_left);
var right = keyboard_check_pressed(vk_right);
if(left or right){
    if(player_selected == 1) player_selected = 2;
    else player_selected = 1;
}

// Draw bestscore
    draw_set_font(font_textbox2);
    draw_set_color(c_white);
    var str = "BEST SCORE: " + string(best_score);
    draw_text(10, 10, str);
    
    // Draw score.
    if(save){
        var str = "SCORE: " + string(save_puntaje);
        draw_text(10, 10 + string_height(str), str);
    }
   
   
 
    var yemenos = 20;
    if(change_color < 10){
        change_color++;
        color_select = c_white;
    }else{
        color_select = make_color_rgb(51,204,255);
        if(change_color < 20){
            change_color++;
        }else{
            change_color = 0;
        }
    }
    
    draw_set_halign(fa_center);
    
    if(font == "press") draw_set_font(font_press_20);    
    draw_set_font(font_wonder_20);
    draw_text_outlined(room_width/2 + 10, 80, "SELECT CHARACTER", color_select, c_black, 2);
    draw_set_halign(noone);
    
    var select = "SELECT";
    var color = c_white;    
    
    

// Draw pablo escobar.
if(player_selected == 1){

    if(font == "press") draw_set_font(font_press_14);
    else draw_set_font(font_wonder_14);
    color = c_red;
    draw_sprite(spr_character_1, 1, 204, 210 - yemenos);
   
    
    
    if(keyboard_check_pressed(ord("X")) and !seleccionado){
        // Change soundtrack.
        audio_sound_gain(sn_soundtrack_pausa, 0, 3000);                
        seleccionado = true;
        jugador = "";
        var marco = instance_nearest(204, 210 - yemenos, Marco);
        with marco image_speed = 1;
        Play_Track("press_start");
        mouse_clear(mb_left);
    }else{
        if(!seleccionado) draw_sprite(spr_marco,1,200, 186);
    }
    
    
}else{

      color = c_white;
      if(font == "press") draw_set_font(font_press_11);
      else draw_set_font(font_wonder_11);
      draw_sprite(spr_character_1, 0, 204, 210 - yemenos);
      
}

draw_set_halign(fa_center);
draw_text_outlined(204 + 128/2, 180 - yemenos, "EL JEFE", color, c_black, 2); 
draw_text_outlined(204 + 128/2, 360 - yemenos, select, color, c_black, 2);


draw_set_halign(noone);
    
if(num_level == 4) if(!instance_exists(New)) instance_create(440 + sprite_get_width(spr_character_2)/2, 210 + 144 - sprite_get_height(spr_new) - 25, New);
color = c_white;
if(num_level < 4) draw_set_alpha(.5);


// Draw second character.
if(player_selected == 2){   
    if(num_level == 4 or gacha_select){ // Select new character nivel 5.
        draw_sprite(spr_character_2, 1, 440, 210 - yemenos);
        if(font == "press") draw_set_font(font_press_14);
        else draw_set_font(font_wonder_14);
        color = c_red;
        
        if(keyboard_check_pressed(ord("X")) and !seleccionado){
            
            seleccionado = true;
            var marco = instance_nearest(440, 210 - yemenos, Marco);
            with marco image_speed = 1;
            jugador = "2";
            Play_Track("press_start");
            mouse_clear(mb_left);
           // room_goto_transition(Room_Transicion, 0, 45);
        }else{
            if(!seleccionado) draw_sprite(spr_marco,1,436, 186);
        }
    }else{
        draw_sprite(spr_character_2, 2, 440, 210 - yemenos);            

         color  = c_red;
         if(font == "press") draw_set_font(font_press_14);
         else draw_set_font(font_wonder_14);    
         
        if(keyboard_check_pressed(ord("X"))){
           //seleccionado = true;
            /*if(font == "press") draw_set_font(font_press_11);
            else draw_set_font(font_wonder_11);
            color = c_white;*/
            if(audio_is_playing(sn_nogacha)) audio_stop_sound(sn_nogacha);
            audio_play_sound(sn_nogacha, 1, 0);
            mouse_clear(mb_left);
        }else{
            if(!seleccionado) draw_sprite(spr_marco,1,436, 186);
        }
    }
}else{
    draw_set_color(c_white);
    if(font == "press") draw_set_font(font_press_11);
    else draw_set_font(font_wonder_11);
    draw_sprite(spr_character_2, 0, 440, 210 - yemenos);
}




draw_set_halign(fa_center);
draw_text_outlined(440 + 128/2, 180 - yemenos, "EL MERO", color, c_black, 2); 
draw_text_outlined(440 + 128/2, 360 - yemenos, select, color, c_black, 2);
draw_set_halign(noone);
draw_set_color(c_white);

draw_set_alpha(1);